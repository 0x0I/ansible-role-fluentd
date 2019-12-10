title "Default role td-agent plugin installation integration test suite"

describe file('/usr/local/bin/fluent-gem') do
  it { should exist }
end

describe command('/usr/local/bin/fluent-gem list | grep fluent-plugin-assert') do
  its('exit_status') { should eq 0 }
end

describe command('/usr/local/bin/fluent-gem list | grep fluent-plugin-systemd') do
  its('exit_status') { should eq 0 }
end