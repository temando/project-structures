# Project Structures

A bunch of project structures we want to standardize on, and distribute via a yoeman generator.



<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Project Structures](#project-structures)
	* [`./pieces`](#pieces)
	* [`./projects`](#projects)

<!-- /code_chunk_output -->

--------

## `./pieces`

Contains pieces of a project that may or may not be used in a specific project type. The `global` folder is intended to be included in all projects, however.

## `./projects`

Contains project entry points. These are missing the `./pieces/global` and other optional pieces.
