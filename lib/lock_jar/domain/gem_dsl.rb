# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements. See the NOTICE file distributed with this
# work for additional information regarding copyright ownership. The ASF
# licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.

require 'lock_jar/maven'
require 'lock_jar/domain/jarfile_dsl'
require 'lock_jar/domain/dsl_helper'

module LockJar
  module Domain
    class GemDsl < JarfileDsl
  
      attr_accessor :gem_dir
      
      class << self
        alias :overriden_create :create
        def create(spec, jarfile)
          builder = new
          builder.gem_dir = spec.gem_dir
          
          jarfile = File.join( spec.gem_dir, jarfile )
          builder.file_path = "gem:#{spec.name}:#{jarfile.gsub( "#{spec.base_dir}/", "" )}.lock"
          
          evaluate(builder, jarfile)
        end
      end
      
      alias :overriden_pom :pom
      def pom(path, *args)
        overriden_pom( File.join( gem_dir, path), *args)
      end
    end
  end
end