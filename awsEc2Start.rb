require 'aws-sdk'

rancherMaster = "i-8795535f"
rancherSlave = "i-382debe0"
gitlab = "i-685f98b0"

ec2Client = Aws::EC2::Client.new(region: 'us-west-2')
ec2Resource = Aws::EC2::Resource.new(client: ec2Client)

if ARGV[0] == "start"
	ec2Client.start_instances({
		instance_ids: [rancherMaster, rancherSlave, gitlab]
	})
elsif ARGV[0] == "stop"
	ec2Client.stop_instances({
		instance_ids: [rancherMaster, rancherSlave, gitlab],
		force: true
	})
end

#ec2Keypair = Aws::EC2::KeyPair.new(name: "zestGitlab", client: ec2Client)


