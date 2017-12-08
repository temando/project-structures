# Project Structures

A bunch of project structures we want to standardize on, and distribute via a yoeman generator.



<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Project Structures](#project-structures)
	* [`./pieces`](#piecespieces)
	* [`./projects`](#projectsprojects)
	* [Purpose](#purpose)

<!-- /code_chunk_output -->

--------

## [`./pieces`](./pieces)

Contains pieces of a project that may or may not be used in a specific project type. The `global` folder is intended to be included in all projects, however.

## [`./projects`](./projects)

Contains project entry points. These are missing the `./pieces/global` and other optional pieces.

## Purpose

This project should include:

- Parts of projects, without repetition.
  - No example files, should not have to delete anything.
- A Yeoman generator for:
  - Interactive project creation
  - Project uplift via codemods & other merge strategies
- Concepts which make projects DRY, such as:
  - An inherited `tsconfig.json`
  - An inherited `webpack.config.ts`
