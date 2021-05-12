#!/bin/sh

npm config set prefix '~/.package-managers/npm'
npm config set @sirwindfield:registry 'https://npm.pkg.github.com'
npm login --registry 'https://npm.pkg.github.com' --scope=@sirwindfield
