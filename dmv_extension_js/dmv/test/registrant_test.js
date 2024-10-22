var assert = require('chai').assert;
var { createRegistrant, earnPermit, takeLicenseExam} = require('../exercises/registrant');

describe('Registrant', function() {

  it('should be able to create a registrant with a name and age', function() {
    var registrant = createRegistrant('Jeff', 16);

    assert.equal(registrant.name, 'Jeff');
    assert.equal(registrant.age, 16);
  });

  it('should be able to have a different name and age', function() {
    var registrant = createRegistrant('Louisa', 24);

    assert.equal(registrant.name, 'Louisa');
    assert.equal(registrant.age, 24);
  });

  it('should default registrants to not having a permit', function() {
    var registrant = createRegistrant('Louisa', 24);

    assert.equal(registrant.permit, false);

  });

  it('should set permit based on what argument is passed in', function() {
    var registrant = createRegistrant('Anita', 18, true);

    assert.equal(registrant.permit, true);
  });

  it('should by default have license data', function() {
    var registrant = createRegistrant('Anita', 18, true);

    assert.deepEqual(registrant.licenseData, {written: false, license: false, renewed: false});
    assert.equal(registrant.licenseData.written, false);
    assert.equal(registrant.licenseData.license, false);
    assert.equal(registrant.licenseData.renewed, false);
  });

  it('should be able to earn a permit if 16 or older', function() {
    var registrant = createRegistrant('Anita', 18, false);

    assert.equal(earnPermit(registrant), 'You have successfully earned a permit!');
  });

  it('should not be able to earn a permit if under 16', function() {
    var registrant = createRegistrant('Anita', 10, false);

    assert.equal(earnPermit(registrant), 'Sorry, you are not able to earn a permit right now.');
  });

  it('should be able to take a license exam because they have earned a permit', function() {
    var registrant = createRegistrant('Anita', 18, true);

    assert.equal(takeLicenseExam(registrant), 'Great job! You can take your test.');
  });

  it.skip('should not be able to take a license exam without a permit', function() {
    var registrant = createRegistrant('Anita', 18, false);

    assert.equal(takeLicenseExam(registrant), 'Sorry, you need to earn a permit first.');
  });
});
