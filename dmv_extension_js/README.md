# The DMV - JS Extension

You've built it in Ruby -- now let's take a look at what some of these objects would look like in JavaScript! 

## Installation Steps

1. Fork and clone this repo.
2. Type `cd the_dmv_extension_js` to move into the root directory
3. Run `npm install`
4. Test that the unit tests are working by running the command `npm test dmv/test/registrant_test.js` in your terminal

You should see something like:

```shell
> the_dmv_extension@1.0.0 test
> mocha "dmv/test/registrant_test"

  Registrant
    - should be able to create a registrant with a name and age
    - should be able to have a different name and age
    - should default registrants to not having a permit
    - should set permit based on what argument is passed in
    - should by default have license data
    - should be able to earn a permit


  0 passing (2ms)
  6 pending
