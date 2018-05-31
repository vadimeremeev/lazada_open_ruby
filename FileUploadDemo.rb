#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

require 'lazop_api_client'
require 'pp'

client = LazopApiClient::Client.new('https://api.lazada.test/rest', '${appKey}', '${appSecret}')
request = LazopApiClient::Request.new('/xiaoxuan/mockfileupload')
request.add_api_parameter("file_name","pom.xml")
request.add_file_parameter("file_bytes","/Users/xt/Documents/work/tasp/tasp/pom.xml")

response = client.execute(request)

puts response.success?

pp response
