require 'spec_helper'

describe Contact do
  let(:blanks) { ['', nil] }
  let(:invalid_emails){['user@mycom', 'usermy.com', 'user', '.com', 'my.com']}

  it { should have_valid(:first_name).when('Matt') }
  it { should_not have_valid(:first_name).when(*blanks) }

  it { should have_valid(:last_name).when('Smith') }
  it { should_not have_valid(:last_name).when(*blanks) }

  it { should have_valid(:email).when('dr.who@tardis.com') }
  it { should_not have_valid(:email).when(*blanks) }
  it { should_not have_valid(:email).when(*invalid_emails) }

  it { should have_valid(:subject).when('Smith') }
  it { should_not have_valid(:subject).when(*blanks) }

  it { should have_valid(:message).when('Smith') }
  it { should_not have_valid(:message).when(*blanks) }
end
