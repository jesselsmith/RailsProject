# Welcome to Better Board Gaming!
If you'd like a place to find new board games, check out reviews, and make your own comments, Better Board Gaming is for you!

Sign up for an account, and you're good to go!

# Setup
Once you fork and clone the repo, you'll need to install all the gems. Navigate to the directory in your terminal and run:

```
$ bundle install
```

If you'd like to see how Better Board Gaming works without having to create all your own info, run the following command:

```
$ rails db:seed
```

This will add a number of sample board games, users, categories, reviews, designers, publishers, and artists.

To be able to login with GitHub, you will have to add an OAuth App to your profile, and get a key and secret to add to the project. If you're unsure how to do this, follow these steps:

1. Login to GitHub
2. Click on your profile icon in the upper right corner, and navigate to "Settings"
3. On the Settings page, click on the link for "Developer Settings" at the bottom of the left hand side.
4. In Developer Settings, click on OAuth Apps on the left side, second option down.
5. In OAuth Apps, click on the "New OAuth App" button on the upper right.
6. Add an Application name: "BetterBoardGaming"
7. Add a homepage URL: "http://localhost:3000" if you're hosting locally
8. Add a Authorization callback URL: add '/users/auth/github/callback' to the end of the homepage url, 'http://localhost:3000/users/auth/github/callback' if hosting locally.
9. Click 'Register Application'
10. Create a .env file in the base directory of the project
11. In the .env file, add 2 lines: 'GITHUB_KEY="#{your Client ID from GitHub}"' and  'GITHUB_SECRET="#{your Client Secret from GitHub}"'
12. Done!

To open up a local version of Better Board Gaming, run this command in your terminal:

```
$ rails s
```

Finally, use a web browser to navigate to [http://localhost:3000](http://localhost:3000)

# Contributer's Guide
## Raising an Issue to Encourage a Contribution
If you notice a problem with the project that you believe needs improvement but you're unable to make the change yourself, you should raise a Github issue containing a clear description of the problem. Include relevant snippets of the content and/or screenshots if applicable. I regularly review issue lists and your issue will be prioritized and addressed as appropriate.

## Submitting a Pull Request to Suggest an Improvement
If you see an opportunity for improvement and can make the change yourself go ahead and use a typical git workflow to make it happen:

* Fork this repository
* Make the change on your fork, with descriptive commits in standard format
* Open a Pull Request against this repo
I will review the changes and approve or comment on them in due course.

Adapted from Learn contributing guide.

# License

https://github.com/jesselsmith/RailsProject/blob/master/LICENSE
