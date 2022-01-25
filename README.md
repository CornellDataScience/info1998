# INFO 1998: Introduction to Machine Learning


Class website for INFO 1998 developed using Jekyll and deployed with GitHub Pages

To begin to make changes to this site there are a few things you will need to download if you don’t have them already. You will need Ruby and Jekyll (a Ruby Gem). See this [quick start guide](https://jekyllrb.com/docs/installation/) for installation instructions. If you are on Mac and running Big Sur you will need Ruby 2.7 or newer (for reference on my machine I have Big Sur and am running Ruby 2.7.2 and everything works fine). Be sure to double check your Ruby version if you already have it installed. 


Now to start editing the site be sure you have cloned the git repo and have edit access to this repo. Navigate to the directory where you cloned the repo and open a code editor (i.e. Visual Studio Code). The folder structure and number of files may seem overwhelming at first but don’t worry, we only edit a small subset of these files. 

To serve the website locally and test any changes you’ve made, run `bundle exec Jekyll serve --watch` in the command prompt in the same directory where you have the repo saved. A link will pop up in the console that will direct you to the local server where you can find the site. You should run this command whenever you are making changes and check that everything works before pushing. To make changes to the INFO 1998 site all you need to do is push your changes to the repo and they should update momentarily on the site. (`git add` any files you changed or materials you’ve added, `git commit -m “short but informative commit message”,` `git push`)

The main files you will edit are `schedules.yml` in `/_data` and some of the markdown files in the root directory. 

Looking at the `schedules.yml` file, it corresponds to the ‘Schedule’ tab on the site. The .yml extension means the file contains data formatted using (‘YAML’)[https://yaml.org/]. It’s language agnostic and can be integrated with most popular programming languages. More often than not you will just be uncommenting lines and changing links but the main thing to remember is to keep the indentation consistent. To add an entry, for a workshop for example, just keep the same structure (`date`, `title`, `contents`, `notes`) and place it where it’s needed. 
To add content for a lecture just uncomment the lines already present and change any links that need updating (be sure to use relative paths). The indentation might be a bit hard to eyeball if it’s correct or not but this is where serving the site locally before pushing comes in handy! You will get an error when trying to build the site if any of the indentation is off. 
Another file in this `/_data` folder you might need to edit is the `navpages.yml`, which has the path and name for each of the entries on the nav bar of our site. Once again, just keep the indentation consistent when making any changes (i.e. updating the ED Stem link each semester). 

The `/_includes` folder contains a lot of html files you won’t need to touch regularly. The one file you will need to be familiar with here is `title.html`. Changes to this file are reflected on the home page in the blue box. This will need to be changed at the beginning of each semester to reflect the new course information and staff. 

Next is the `/_layouts` folder which contains 2 html files. These just encode the base format for each page. 

Next is `/_site` which you WILL NOT CHANGE ANYTHING IN. This folder just contains the compiled version of the site (it’s generated automatically when you build and serve the site locally). Thus, changing things in this folder have no impact because they’re overwritten when you build the site. GitHub Pages automatically generates the site from our source code (hence why we have  `/_site` in our `.gitignore`). The `/_site` folder is used for our local preview of the site. 

`/_css` contains our site’s css file. 

`/resources` is where all of our lecture material lives. The archives folder here holds semester based folders we used before standardizing our notebooks. The assignments folders contains all the jupyter and rmarkdown notebooks. 

`_config.yml` has some definitions for global variables and settings for the whole site. You shouldn’t have to change much (except the semester and year under description).

The remaining important files are the markdown files (`final_project.md`, `index.md`, `syllabus.md`, `schedule.md`, `getting_started.md`). Changing text in these will change the text on those respective pages on the site. 

That should be about it! Happy teaching!

still need to add some links to helpful sites for debugging ruby/jekyll errors
