/**
 LICENSE:
 
 Project Thunder Snow
 Copyright 2011 thebitstream.com
 
 Description:
 *A Multimedia engine and transcoding framework for playing audio,
 visual, and scripted-data streams from any networked resource.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */
package com.thebitstream.provider
{
	import flash.events.EventDispatcher;
	/**
	 *  
	 * @author Andy Shaules
	 * 
	 */
	public class OOBHandler
	{
		public var owner:EventDispatcher;
		public var chan:String;
		
		public function OOBHandler(ownr:EventDispatcher,chanName:String)
		{	
			chan=chanName;
			owner=ownr;
		}
		
		public function handle(e:Object):void
		{			
			owner.dispatchEvent(new StreamEvent(StreamEvent.CUEPOINT,{name:chan,value:e}));
		}
	}
}