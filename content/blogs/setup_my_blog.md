---
title: "Setuping my blog"
date: 2022-05-24T11:30:03+00:00
tags: ["blog", "hugo"]
author: "berlingoqc"
showToc: true
TocOpen: true
---

## Long overdue

I don't know if trully usefull , but it's a lowkey goal for many programmer to have their own blog
to post tutorial , information and opinion on programming.

For me i think it's the third or fourth time since a start to code that i try to create a website
for myself.

All the previous time i try to create a framework for blogging from scratch in golang or something else.
Abandonning before ever reaching an eye.

This time i choice the easy path : `hugo` + `hugo theme` + `logo generator` not mutch work on my part
and a lovely website in a afternoon. Also what makes it easy is that i already have a lot of content
to post on the website so it does not fill like a empty space without meaning.

## Setuping the project

I choice the following template for my blog : [PaperMod](https://github.com/adityatelange/hugo-PaperMod.git)

To start the project i follow the instruction of the github repository.

```bash
# I'm on mac ... so i use brew
brew install hugo

# Generate the project
hugo new site berlingoqc -f yml

# Add the template as a submodule
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod

```

After that my goal is that my development log that i store in the repository of my projects
be imported to this website so i wrote a little script to do the following.

* Clone the project that contains the files
* Copy those entry to the folder for the project

```bash
#! /bin/bash

# Stuff i need not to hardcode when i will have more projects
GITHUB_REPO="https://github.com/berlingoqc/cod-zombie-2d-clone"
POST_FOLDER="cod-zombie-2d-clone"
PROJECT_LOG_FOLDER="logs"

rm -rf $POST_FOLDER
git clone $GITHUB_REPO

for log in $(ls $POST_FOLDER/$PROJECT_LOG_FOLDER/*.md); do
    filename=$(basename $log)
    cat $log > content/$POST_FOLDER/journal/$filename
done
```

And this is run in the pipeline as a GitHub Action to not have to commit the copy of the files.

For now since i only import stuff from one project i hardcoded the value in the script but at
some point i will have to move them to the github action.

Also at the beginning i wanted to add the hugo metadata automatically at the same time but i found
that this would not be very usefull so i add them already in my other project.

The thing left to do is having the blog rebuild automatically when the linked project
are commited and the devlog is changing. I think for now i will go for the easiest solution.

Have the release pipeline trigger by a cron job , since it's really fast to execute i won't
have to pay extra for the github action use.

The other option maybe to add a commit and push the code or a webhook would be nice
with this project [repository-dispatch](https://github.com/peter-evans/repository-dispatch)

but i'll go just for the cron job running every 2 hour for right now.

```yaml
name: Publish to GitHub Pages

on:
  push:
    branches:
      - master
  schedule:
    - cron:  '0 */2 * * *'

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        submodules: recursive # The theme submodule need to be present
    - name: Prebuild hugo
      run: ./scripts/generate_log_to_blog.sh # Copy the files from my other projects
    - name: Build hugo # Build the hugo site
      uses: crazy-max/ghaction-hugo@v1
      with:
        version: latest
        extended: false
        args: --cleanDestinationDir --minify --verbose
    - name: Publish generated content to GitHub Pages # Deploy it to github pages
      uses: tsunematsu21/actions-publish-gh-pages@v1.0.2
      with:
          dir: public
          branch: gh-pages
          token: ${{ secrets.ACCESS_TOKEN }} # Github Access Token
````


## Creating a little logo

I wanted a nice little logo to make this website more personal.

So i use the first free option that i found on DuckDuckGo [freelogodesign](https://freelogodesign.org)

I created it manually and i'm pleased with the result just what i need and the free 200x200 is good
enought for my need.

After that i used [this website](https://redketchup.io/favicon-generator) to generate a favicon
with border radius and a simple web manifest for the website.


## Will i perish like all blog tend to do

Only the future will tell.

