#!/usr/bin/env python3
"""
YOLO demo script:
- Detects people and other common objects from webcam or video
- Draws bounding boxes with labels
- Shows people count, detected object summary, and live FPS

Usage examples:
  python yolo_showoff.py
  python yolo_showoff.py --source 0
  python yolo_showoff.py --source ./sample.mp4 --output ./out.mp4
  python yolo_showoff.py --model yolov8s.pt --conf 0.35
"""

from __future__ import annotations

import argparse
import collections
import random
import sys
import time
from typing import Dict, Tuple

import cv2

try:
    from ultralytics import YOLO
except ImportError:
    print(
        "Missing dependency: ultralytics\n"
        "Install with:\n"
        "  pip install ultralytics opencv-python",
        file=sys.stderr,
    )
    sys.exit(1)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="YOLO people + object detector demo")
    parser.add_argument(
        "--source",
        default="0",
        help="Input source. 0 for webcam, or a video file path/URL. Default: 0",
    )
    parser.add_argument(
        "--model",
        default="yolov8n.pt",
        help="YOLO model checkpoint. Default: yolov8n.pt",
    )
    parser.add_argument(
        "--conf",
        type=float,
        default=0.3,
        help="Confidence threshold (0-1). Default: 0.3",
    )
    parser.add_argument(
        "--output",
        default="",
        help="Optional output video path (e.g. out.mp4).",
    )
    return parser.parse_args()


def source_to_capture_value(raw_source: str):
    return int(raw_source) if raw_source.isdigit() else raw_source


def class_color(cache: Dict[int, Tuple[int, int, int]], class_id: int) -> Tuple[int, int, int]:
    if class_id not in cache:
        rng = random.Random(class_id + 17)
        cache[class_id] = (
            rng.randint(40, 255),
            rng.randint(40, 255),
            rng.randint(40, 255),
        )
    return cache[class_id]


def main() -> int:
    args = parse_args()

    model = YOLO(args.model)
    names = model.names

    cap = cv2.VideoCapture(source_to_capture_value(args.source))
    if not cap.isOpened():
        print(f"Could not open source: {args.source}", file=sys.stderr)
        return 1

    writer = None
    if args.output:
        width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
        height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
        fps = cap.get(cv2.CAP_PROP_FPS)
        fps = fps if fps and fps > 1 else 30.0
        fourcc = cv2.VideoWriter_fourcc(*"mp4v")
        writer = cv2.VideoWriter(args.output, fourcc, fps, (width, height))

    color_cache: Dict[int, Tuple[int, int, int]] = {}
    prev_time = time.time()

    print("Press 'q' to quit.")

    while True:
        ok, frame = cap.read()
        if not ok:
            break

        result = model(frame, conf=args.conf, verbose=False)[0]
        boxes = result.boxes

        person_count = 0
        object_counter = collections.Counter()

        if boxes is not None and len(boxes) > 0:
            for box in boxes:
                cls_id = int(box.cls[0].item())
                conf = float(box.conf[0].item())
                label = names.get(cls_id, str(cls_id))
                x1, y1, x2, y2 = map(int, box.xyxy[0].tolist())

                if label == "person":
                    person_count += 1
                    color = (40, 220, 40)
                else:
                    object_counter[label] += 1
                    color = class_color(color_cache, cls_id)

                cv2.rectangle(frame, (x1, y1), (x2, y2), color, 2)
                cv2.putText(
                    frame,
                    f"{label} {conf:.2f}",
                    (x1, max(20, y1 - 8)),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    0.55,
                    color,
                    2,
                    cv2.LINE_AA,
                )

        now = time.time()
        fps = 1.0 / max(1e-6, now - prev_time)
        prev_time = now

        top_objects = ", ".join(f"{name}:{count}" for name, count in object_counter.most_common(4))
        if not top_objects:
            top_objects = "none"

        cv2.putText(
            frame,
            f"People: {person_count}",
            (12, 28),
            cv2.FONT_HERSHEY_DUPLEX,
            0.8,
            (40, 220, 40),
            2,
            cv2.LINE_AA,
        )
        cv2.putText(
            frame,
            f"Objects: {top_objects}",
            (12, 58),
            cv2.FONT_HERSHEY_DUPLEX,
            0.65,
            (255, 255, 255),
            2,
            cv2.LINE_AA,
        )
        cv2.putText(
            frame,
            f"FPS: {fps:.1f}",
            (12, 88),
            cv2.FONT_HERSHEY_DUPLEX,
            0.65,
            (255, 255, 0),
            2,
            cv2.LINE_AA,
        )

        if writer is not None:
            writer.write(frame)

        cv2.imshow("YOLO Showoff - People + Objects", frame)
        if (cv2.waitKey(1) & 0xFF) == ord("q"):
            break

    cap.release()
    if writer is not None:
        writer.release()
    cv2.destroyAllWindows()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
