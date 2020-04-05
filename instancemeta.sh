#!/bin/bash
AMIID=$(curl -s http://169.254.169.254/latest/meta-data/ami-id)
_content=''
_content="${_content}[{"
_content="${_content}\"CaptureTime\": \"$(date +%Y-%m-%dT%H:%M:%SZ)\","
_content="${_content}\"TypeName\": \"Custom:InstanceMeta\","
_content="${_content}\"SchemaVersion\": \"1.0\","
_content="${_content}\"Content\": ["
_content="${_content}{ \"amiid\": \"${AMIID}\"}"
_content="${_content}"
_content="${_content}]"
_content="${_content}}]"
echo $_content
