# fluent-plugin-input-gelf-kolyunya

[![Gem Version](https://badge.fury.io/rb/fluent-plugin-input-gelf-kolyunya.svg)](http://badge.fury.io/rb/fluent-plugin-input-gelf-kolyunya)

## Overview

It's a fork from - https://github.com/itek09/fluent-plugin-input-gelf

It's fixing error:

```
gelf failed to emit error="time must be a Fluent::EventTime (or Integer): Float" error_class="ArgumentError"
```

Thanks for this fix - [@gcaracuel](https://github.com/gcaracuel)

### Install

```sh
td-agent-gem install fluent-plugin-input-gelf-kolyunya
```

### Configuration

Accept GELF encoded messages over UDP

```
<source>
  type gelf
  tag example.gelf
  bind 127.0.0.1
  port 12201
</source>

<match example.gelf>
  type stdout
</match>
```
