# Burger King Brand Twitter Clone: Burger King Sizzles
## Presented by Giant Peach Corporation

# TASK

Our team (Giant Peach Corporation) was tasked to create a Burger King branded Twitter clone within five days using Ruby on Rails, with the following requirements:

* Provide young people with a twitter-like application.
* Designed within Burger King Co brand style guides.
* Keep within a G rating.
* Supply Burger King Co inspired tweet naming convention.

# SYNOPSIS

## Users

The application is designed to allow users to:

* Sign up and login/logout (with user authentication).
* Create, edit and delete tweets (known as "sizzles" in the application), including photographs.
* Like (known as "whop" in the application) and unlike sizzles.
* Reply to other users' sizzles.

## Client

The application is designed to allow the client to:

* Login to an admin account.
* View an admin dashboard panel with the latest tweets and statistics about the users, including the users who are most active on the platform.

# ACHIEVEMENTS

* Created wireframes / design mockups. 
    ** For home page [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/sana/app/assets/images/homepage.png "Home page"). 
    ** For sign up page [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/sana/app/assets/images/Signup%20page.png "sign up page"). 
    ** For user login [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/sana/app/assets/images/homepage.png "log in page"). 
    ** For user's page with sizzle feed [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/sana/app/assets/images/User's%20Login%20page.png "User's log in page"). 
    ** For BK stream page [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/sana/app/assets/images/bk_stream_page_1024.png "BK STREAM PAGE").
* Created user stories.
    ** For Personas and Lean Canvas [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/Tessa/app/assets/images/tessa/Personas%20%26%20Lean%20canvas.pdf).
    ** For Wireframe [click here](https://github.com/GP-corps/Burger-King-Sizzles/blob/Tessa/app/assets/images/tessa/wireframes.png).

* Created a homepage with client sizzle ads.
* Implemented mobile-responsive design.
* Implemented favicon.
* Created a page with all sizzles listed as Bootstrap cards, including the number of hours ago it was posted.
* Linked each sizzle to the user who created it.
* Created sign up / login functionality with the use of modals.
* Implemented votes gem [found here](https://github.com/ryanto/acts_as_votable).
* Implemented admin gem [found here](https://github.com/sferik/rails_admin).
* Implemented CarrierWave gem [found here](https://github.com/carrierwaveuploader/carrierwave).

# CHALLENGES & LESSONS LEARNT

* Adapting legacy code.
* Ensuring that the front end, UI/UX, and back end teams had the same, consistent vision for the project.
* Modifications to admin dashboard panel obtained through gem (trying to change "tweets" to "sizzles" etc) and restricting access to the admin panel (currently users can login to the admin panel if they find the /admin url).
* Trying to get profile URL to = "/:user"  so each user has their own URL, rather than just "/profile".
* At one stage, the submit button only worked once before crashing (solution: you cannot put a form inside a table, so the table classes was removed).
* Issues encountered by individuals with respect to postgresql and with bcrypt gem (with solutions only working after a significant investment of time, and not consistently).
* Lack of knowledge of Ruby on Rails.
* Use of Git, including using, pulling and merging branches.
* Understanding what was involved with some of the roles (such as Digital Producer) and grappling with lack of experience in them (such as Account Director).
* Tight timeframe given the public holiday.
* Difficulties also encountered with simultaneous processes occurring at once (such as front end, UX/UI, and back end happening at the same time).

# TECHNOLOGIES USED

* Ruby on Rails
* HTML 
* CSS & SASS
* Bootstrap
* Gems
