# WriteFreely Configuration Git Repo Template

This template repository serves as your starting point on keeping your configuration in an Git repo for WriteFreely, whenever for use in Docker or not. Since we're storing senstive information, please DO NOT make them public, otherwise you breached to ["Net F**ked by 2050"][thejuicemedia-net-zero] status.

[thejuicemedia-net-zero]: https://www.youtube.com/watch?v=1FqXTCvDLeo

## Getting Started

It's best to do the `clone-and-push` method (instead of creating an fork in GitHub or pressing `Use this template`) to keep up with upstream changes as it might be hard to synchorize our changes into your config repo, and if you do, you're on your own on static resources, HTMl templates, and other stuff. If you do use this template afresh, then expect more chaos on the Git commit history side.

1. Clone this repo somewhere with `git clone https://github.com/ajhalili2006-experiments/writefreely-config-hub-template wfdata`, where `wfdata` is the directory would you like to store the repository.
2. Rename the remote with `git remote rename origin upstream` then add your private repo where you'll use for storing the configs with `git remote add origin <url>`, replacing `<url>` with the Git HTTPS or SSH URL of that repo.
3. Push with `git push -u origin main` to push changes into your own private fork.
4. Profit! Now you can do `writefreely config gen`, `writefreely db init` and `writefreely keys gen` commands. Make sure to commit them to avoid losing your data.

## Related Projects

* <https://mau.dev/RecapTime/docker-writefreely>

## License

Files provided by this repo, including from upstream's release tarballs are licensed under AGPL 3.0. Proceed at your own risk
if you customize anything and use these customizations as an business, especially if it include your configuration/s.
