#
# Cookbook:: node-info
# Recipe:: node-info
#
# Copyright:: 2019, The Authors, All Rights Reserved.

packages=['ack','silversearcher-ag','htop','jq','pydf','unzip']

if os.debian?
  packages.each do |name|
    describe package(name) do
      it { should be_installed }
    end
  end
end