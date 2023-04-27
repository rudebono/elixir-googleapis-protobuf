defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.UserAgent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :USER_AGENT_UNSPECIFIED, 0
  field :CHROME_LINUX, 1
  field :CHROME_ANDROID, 2
  field :SAFARI_IPHONE, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.TargetPlatform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_PLATFORM_UNSPECIFIED, 0
  field :APP_ENGINE, 1
  field :COMPUTE, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.RiskLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RISK_LEVEL_UNSPECIFIED, 0
  field :NORMAL, 1
  field :LOW, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.ExportToSecurityCommandCenter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.GoogleAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.CustomAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false
  field :login_url, 3, type: :string, json_name: "loginUrl", deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :authentication, 0

  field :google_account, 1,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.GoogleAccount,
    json_name: "googleAccount",
    oneof: 0

  field :custom_account, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.CustomAccount,
    json_name: "customAccount",
    oneof: 0
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"

  field :interval_duration_days, 2,
    type: :int32,
    json_name: "intervalDurationDays",
    deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :max_qps, 3, type: :int32, json_name: "maxQps"

  field :starting_urls, 4,
    repeated: true,
    type: :string,
    json_name: "startingUrls",
    deprecated: false

  field :authentication, 5, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication

  field :user_agent, 6,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.UserAgent,
    json_name: "userAgent",
    enum: true

  field :blacklist_patterns, 7, repeated: true, type: :string, json_name: "blacklistPatterns"
  field :schedule, 8, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Schedule

  field :target_platforms, 9,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.TargetPlatform,
    json_name: "targetPlatforms",
    enum: true

  field :export_to_security_command_center, 10,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.ExportToSecurityCommandCenter,
    json_name: "exportToSecurityCommandCenter",
    enum: true

  field :latest_run, 11,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun,
    json_name: "latestRun"

  field :risk_level, 12,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.RiskLevel,
    json_name: "riskLevel",
    enum: true
end