# Ausweisapp2-doc

This repository contains the documentation about the `ausweisapp2 authentication application`.

## Introduction

As static-site generator we are using [HUGO](https://gohugo.io/)

To view the documentation as a Web site, run one of the binaries located at the top level of this repository with `serve' as an argument (**hugo_linux** for Linux, **hugo_windows.exe** for Windows, and **hugo_mac** for MacOS).

The command execution should look like `./hugo_linux serve`

## Theme

For the layout and design we use our self-made Hugo theme. This theme was integrated as a submodule into the theme folder.

**Update the submodule**
```bash
git submodule update --init --recursive
```

## How to make changes

All website related markdown files are located in the **content** folder.

Each page exists as German and English version.

### Creating a site as english and german version:

By default hugo is using english as main language. Other languages can be added to the *config.yaml* located at the top level of this repository. 

**Create a file with the english version:**
```bash
touch <path_where_your_file_should_be_placed>/_index.md>
```

**Create a file with the german version:**
```bash
touch <path_where_your_file_should_be_placed>/_index.de.md>
```

### Render specific options

These options can be used to define settings such as location, title, etc.

```
title: "Technical documentation"                # defines the site title
menu:
  main:
    identifier: "technical" 	                # defines the location on the web
    weight: -930                                # defines the order in the navigation (lower = higher classification)
```