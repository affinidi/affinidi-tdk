#!/bin//bash

# cycle through all subbolders and run npm scripts
cd ./packages

# FIXME: 
cd ./auth-provider
npm i --prefix .
npm run package