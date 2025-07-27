defmodule Google.Cloud.Ids.Logging.V1.ThreatLog.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
  field :CRITICAL, 5
  field :INFORMATIONAL, 6
end

defmodule Google.Cloud.Ids.Logging.V1.ThreatLog.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIRECTION_UNDEFINED, 0
  field :CLIENT_TO_SERVER, 1
  field :SERVER_TO_CLIENT, 2
end

defmodule Google.Cloud.Ids.Logging.V1.ThreatLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :threat_id, 13, type: :string, json_name: "threatId"
  field :alert_time, 2, type: Google.Protobuf.Timestamp, json_name: "alertTime"

  field :alert_severity, 19,
    type: Google.Cloud.Ids.Logging.V1.ThreatLog.Severity,
    json_name: "alertSeverity",
    enum: true

  field :type, 4, type: :string
  field :category, 18, type: :string
  field :source_ip_address, 5, type: :string, json_name: "sourceIpAddress"
  field :source_port, 6, type: :int32, json_name: "sourcePort"
  field :destination_ip_address, 7, type: :string, json_name: "destinationIpAddress"
  field :destination_port, 8, type: :int32, json_name: "destinationPort"
  field :ip_protocol, 9, type: :string, json_name: "ipProtocol"
  field :direction, 10, type: Google.Cloud.Ids.Logging.V1.ThreatLog.Direction, enum: true
  field :session_id, 14, type: :string, json_name: "sessionId"
  field :repeat_count, 15, type: :string, json_name: "repeatCount"
  field :application, 16, type: :string
  field :uri_or_filename, 17, type: :string, json_name: "uriOrFilename"
  field :cves, 20, repeated: true, type: :string
  field :details, 11, type: :string
  field :network, 12, type: :string
end

defmodule Google.Cloud.Ids.Logging.V1.TrafficLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :elapsed_time, 2, type: Google.Protobuf.Duration, json_name: "elapsedTime"
  field :network, 3, type: :string
  field :source_ip_address, 4, type: :string, json_name: "sourceIpAddress"
  field :source_port, 5, type: :int32, json_name: "sourcePort"
  field :destination_ip_address, 6, type: :string, json_name: "destinationIpAddress"
  field :destination_port, 7, type: :int32, json_name: "destinationPort"
  field :ip_protocol, 8, type: :string, json_name: "ipProtocol"
  field :application, 9, type: :string
  field :session_id, 12, type: :string, json_name: "sessionId"
  field :repeat_count, 13, type: :string, json_name: "repeatCount"
  field :total_bytes, 14, type: :int64, json_name: "totalBytes"
  field :total_packets, 15, type: :int64, json_name: "totalPackets"
end
