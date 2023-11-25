#!/bin/bash
git fetch origin
git checkout origin/${1:-main}
git rebase main
