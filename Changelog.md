## 2.2.1 2022-09-12

* [Support to decode part in EmailSpec::MailExt#default_part_body](https://github.com/email-spec/email-spec/pull/211)
* [Drop rubyforge_project from gemspec](https://github.com/email-spec/email-spec/pull/215)
* [Avoid eagerly loading ActionMailer::Base](https://github.com/email-spec/email-spec/pull/219)
* [README: use SVG badges](https://github.com/email-spec/email-spec/pull/217)

## 2.2.0 2018-04-03

* Support for `spinach` (@pedantic-git)

## 2.1.2 2018-04-03

* Fix compatibility issue with `mail` gem (@sikachu)
* Fix cucumber example (@adamdawkins)

## 2.1.1 2017-05-16

* Suppress warnings for URI.extract (@koic)
* Dead link removal (@kingdonb)
* Better regexp for link searches (@tiagotex)
* Relax version requirement for `mail` gem (@thorncp)
* Add ruby 2.4 to the build matrix (@eitoball)

## 2.1.0 2016-05-04

* Add Ruby 2.2.3 and 2.3.0 to Travis (@etagwerker)
* Fix decoding of email body before matching (@schmierkov)
* Invoke Reset Mailer before each scenario (@etagwerker)
* Add html method for email (@eliotsykes)
* Added actionmailer and droped cucumber-rails and cucumber-sinatra dependency (@mauro-oto)
* Fix regex to improve matching of link text in email (@Hirurg103)
* Improved README (@etagwerker)

## 2.0.0 2016-01-15

* Upgraded to RSpec 3.1 (Daniel Doubrovkine)
* Remove integration of Delayed Job (@jeroenvandijk)
* Better coverage for `#reply_to` (@akshayrawat)
* Decode encoded links (@deadlyicon)
* Add Ruby 2.1.0 to Travis (@salimane)
* Upgraded Rspec and Cucumber (@dblock)
* Don't assume Rspec is always available (@myobie)
* Fix unread emails for cached deliverys (@thickpaddy)
* Better link matching with regexp (@ronaldsalas)
* Signal non backwards compatible release with version 2.0.0 (@etagwerker)
* Upgraded mail dependency (@etagwerker)
* Better documentation for new Rspec syntax (@etagwerker)
* Updated Travis configuration to solve broken builds (@schmierkov)
* Fixed Rspec warnings and removed rails_generators from repo (@mauro-oto)
* Added coverage for links surrounded by tags (@mauro-oto)

## 1.6.0 2014-05-27

* New RSpec matcher API support (Morton Jonuschat)
* Turnip Doc updates (Joshua Muheim)
* Use Mail#destination for picking recipients (Lukasz Strzalkowski)
* Emails deliver to nobody when perform_deliveries is set to false (Sean Griffin)

## 1.5.0 2013-07-22

* Upgraded use of Capybara to avoid deprecation warnings.
* Upgraded use of RSpec to deal with new expect API (Thomas Drake-Brockman)

### New features
* visit_in_email now works for emails that are not the current_email (Ernesto Tagwerker)
* emails can be found based on :from field (John Cant)

### Bug fixes
* Emails that are not found when clicking a link now raise an exception. (Adam Berlin & Alex Kramer)

## 1.4.0 2012-10-30

* removed jeweler in favor of just using bundler for all gem management.

### New features
* MiniTest support! See README for documentation. (Mike Moore)

## 1.3.0 2011-04-07

Many thanks to Derek Hammer and George Ardeleanu who both spontaneously cleaned up various parts of the project
and helped get the release out the door. Yay opensoruce!

### New features

* Launchy is now used to open up the email viewer.  (Matt Burke)
* Email Viewer now works in Rails 3 (Woody Peterson)
* Email Viewer now works with UTF-8. (Woody Peterson)
* Documentation for email matchers. (Derek Hammer)

## 1.2.1 2011-06-20

### Bugfixes

* find_email now allows with_subject and with_text to be either a String or Regexp. Issue #67. (Curtis Miller)

## 1.2.0 2011-06-16

### New features

* [he|she] options for steps. (Dan Croak)
* cc_to RSpec matcher. (Arie on github)
* Check both html and text parts of multipart emails in Cucumber step. (Charles Barbier)
* delivery_method is not set by email_spec to allow for SMTP (e.g. MockSMTP) delivery (Donald Piret)

### Bugfixes

* delivered_to matcher now compares both sender name and email address. (Jason Garber)
* find_email now matches with_subject and with_text containing text with regex sensitive characters. Issue #31. (Curtis Miller)
* current_email_address to work outside of the context of Cucumber. (Szymon Przybył)

## 1.1.1 2010-12-29
* Require "action_mailer" to avoid deprecation warnings. (Ryan Bigg)
* Relaxes pessimistic version dependency on RSpec. (GH-41 Dan Pickett)

## 1.1.0 2010-12-20

### Bugfixes

* anchor tags are no longer ignored when clicking links in emails (Anders Törnqist and Nicklas Ramhöj)
* set_current_email handles cases where To to blank but may contain CC, or BCC recipients (Murray Steele)
* Doc fixes (Florent Guilleux)


## 1.0 2010-07-31 Rails 3.0 Release
  This release makes email-spec compatible with Rails 3 and RSpec 2.x.

  IMPORTANT: As of 1.0 email-spec is no longer backwards compatible wit Rails 2.x.  I will be maintaining a 0.6
  branch on github/rubygems for Rails 2 compatibility if anyone wants new features backported.

  This was truly a community effort and I appreciate all of time and effort donated by those involved. Specifically:
* Maxim Chernyak for the initial conversion work to Rails 3
* Tim Harper for ironing out various matcher bugs
* Patrick Muldoon for doing a fantastic job of cleaning up the features and specs. He also fixed the
      DelayedJob support and worked through all the bundler issues the project was facing.

### Bugfixes

* Further checks for older DelayedJob versions to fix compatibility issues. (Andrea Longhi and others)

## 0.6.2 2010-03-21

### New features

* New reply_to matcher. (David Balatero)

## 0.6.1 2010-03-17

### New features

* Ability to click image links via the image alt tag. (Tim Harper)

## 0.6.0 2010-03-05

### New features

* Ability to open a list of attachments on an email (with corresponding steps and EmailViewer support). (Kieran Pilkington)

### Bugfixes

* Spelling mistake in steps. (Ben Mabey)
* Delayed Job background processor fixes
* Narrow delayed job collisions with other apps defining Delayed constant. (Kieran Pilkington)
* Fix compatibility with earlier versions of DelayedJob (Michael Baumgarten and Kieran Pilkington)

### Changes

* Deprecated steps were removed. (Kieran Pilkington)

## 0.5.0 2010-02-22

### New features

* "should receive <x> emails with subject <the_subject>" step definition (Balint Erdi)
* "should receive an email with the following body:" step definition (Ben Mabey)
* Debugging steps that tie into EmailViewer: (Ben Mabey)
* "save and open current email"
* "save and open all text emails"
* "save and open all html emails"
* "save and open all raw emails"

### Bugfixes

* Gracefully handle cases where emails do not have a 'to' value. (Kieran Pilkington)

## 0.4.0 2010-01-07

### New features

* Added support for action_mailer_cache_delivery plugin. (Dan Dofter)
  You must use the fork at: http://github.com/liangzan/action_mailer_cache_delivery

### Bugfixes

* `be_delivered_from` matcher now compares both sender name and email address. (Dan Dofter)

## 0.3.8 2009-12-23

### Bugfixes

* Guard against cc and bcc fields being nil for ActionMailer. (Piotr Sarnacki)

## 0.3.7 2009-12-17

### New features

* Matchers are now Ruby 1.9 compatible. (John Dewey)

## 0.3.6 2009-12-16

### New features

* Cucumber steps for `be_delivered_from`, `have_header` matchers. (Joseph Holsten)
* Explicit regular expression steps. i.e. `I should see /foo/ in the email body` (Joseph Holsten)

## 0.3.5 2009-09-30 The Pony Release!

### New features

* Support for Pony mailer library. (Rob Holland)

## 0.3.4 2009-09-26

### Bugfixes

* Typo and logic fixes for DeliverFrom matcher. (Yury Kotlyarov)

## 0.3.3 2009-09-18

### New features

* DeliverFrom matcher. i.e. `email.should deliver_from(blah)` or `email.should be_delivered_from(blah)` (Diego Carrion)

## 0.3.2 2009-09-10

### New features

* Support for delayed_job. (Kieran Pilkington)

## 0.3.1 2009-08-19

This release is a general refactoring of the steps and helpers.
The example rails app was also updated to use the lateset rails and webrat.  It also takes advantages
and the newer step definistions including the new third-person forms.

Some of the generated steps are being removed in favor of some of the newer ones.  The older ones
will remain until 0.4.0 but will issue deprecation warnings.

Big shoutout to Kieran Pilkington who did the majority of work for this release.

## 0.3.0 2009-08-13

### New features

* New helper #last_email_address which returns the last address used by email-spec for that scenario. (Ben Mabey)
* Steps now support third person language. (Kieran P)
* "[email] should receive ... " now supports "an" instead of just an integer. (Kieran Pilkington)
    With these changes, the following is now possible:

```
  Then "jack@example.com" should receive an email
  When they open the email
  Then they should see "Account has been created" in the subject
```

* Additional default steps (Balint Erdi)
* `Then /^I should not receive any emails?$/`
* `When %r{^"([^"]*?)" opens? the email$} do |address|`

## 0.2.1 2009-5-29

### New Features

* BCC RSpec matcher. (Josh Nichols)

### Bugfixes

* Include BCCed and CCed messsages in the mailbox. (Jakub Kosiński)

## 0.2.0 2009-6-08
No changes. Bumping version for RubyForge release.


## 0.1.4 2009-5-29

### Bugfixes

* Require deliveries in the helpers so it doesn't blow up with RSpec. (Craig Webster)

## 0.1.3 2009-4-15

### Bugfixes

* Fixed regular expressions in genertaed steps. (Ben Mabey)
* World semantics changed in cucumber (0.2.3.2), email_spec now uses the new API. (Hector Morales)

## 0.1.2 2009-4-05

### Bugfixes

* Actually added the renamed generators to the gem so people could use it! D'oh! (Ben Mabey)
* You can either use `./script generate email_spec` or `rubigen rails email_spec`
* Removed Rake tasks from example application to prevent conflicts when used as a plugin. (Ben Mabey)

## 0.1.1 2009-3-26

### New features

* Switched dir structure over to support rubigen. (Dr. Nic)

## 0.1.0 2009-3-25

### New features

* Change Rakefile to run all specs and features, as well as prepare the db (Mischa Fierer)
* Allow for array to be passed into deliver_to matcher. (Diego Carrion)
* Added matcher for checking if a collision of emails includes an email with a particular subject (Luke Melia, Noah Davis)
* Introduced hook to convert objects to email addresses (Luke Melia and Lee Bankewitz)

    This allows you, in your step matcher, to say something like:
    maillbox_for(some_user)

    Use it in your cucumber env.rb like so:

```
  EmailSpec::AddressConverter.instance.conversion do |input|
    if input.is_a?(User)
      input.email
    else
      input
    end
  end
```

### Bugfixes

* Revert parse_email_for_link helper method to allow for text links as well as explicit link finding. (Mischa Fierer)
* Isolated variances between using email-spec with an ARMailer project. (Luke Melia)

## 0.0.9 2009-2-15

### New features

* have_body_text, have_header matchers (Luke Melia)
* EmailViewer - opens all sent emails in a given scenario when the environment variables are set. (Luke Melia)
* Added compatibility with using ARMailer in test mode. (Luke Melia)

### Bugfixes

* set_current_email now works with multiple addresses in To field. (Brian McManus, Ben Mabey)

## 0.0.7 2009-1-20

### New features

* have_subject matcher (Ben Mabey)

## 0.0.6 2008-12-23

### New features

* Improved RSpec documentation and refactorings. (Ben Mabey)

### Bugfixes

* Removed sample app Rake Tasks to have it play nice with environments that use Cucumber as plugin- not gem. (Ben Mabey, Ivor- on github)

## 0.0.5 2008-12-18

* Initial release - see this post for full history and contributors: http://www.benmabey.com/2008/12/18/github-rocks/
