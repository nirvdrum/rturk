require '../lib/rturk'
root = File.expand_path(File.dirname(__FILE__))
aws = YAML.load(File.open(File.join(root, 'mturk.yml')))
@turk = RTurk::Requester.new(aws['AWSAccessKeyId'], aws['AWSAccessKey'], :sandbox => true)

p @turk.get_assignments_for_hit('CYBGWCWJAXETWZW23X20')
