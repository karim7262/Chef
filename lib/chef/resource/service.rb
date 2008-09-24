#
# Author:: AJ Christensen (<aj@hjksolutions.com>)
# Copyright:: Copyright (c) 2008 HJK Solutions, LLC
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  class Resource
    class Service < Chef::Resource
        
      def initialize(name, collection=nil, node=nil)
        super(name, collection, node)
        @resource_name = :service
        @service_name = name
        @enabled = nil
        @hasstatus = nil
        @hasrestart = nil
        @pattern = nil
        @start = nil
        @stop = nil
        @status = nil
        @action = "enable"
        @allowed_actions.push(:enable, :disable, :start, :stop)
      end
     
    end
  end
end
