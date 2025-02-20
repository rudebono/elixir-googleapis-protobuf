defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.UserAgent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :USER_AGENT_UNSPECIFIED, 0
  field :CHROME_LINUX, 1
  field :CHROME_ANDROID, 2
  field :SAFARI_IPHONE, 3
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.RiskLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RISK_LEVEL_UNSPECIFIED, 0
  field :NORMAL, 1
  field :LOW, 2
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.ExportToSecurityCommandCenter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.GoogleAccount do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.CustomAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
  field :login_url, 3, type: :string, json_name: "loginUrl"
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_audience_client_id, 1,
    type: :string,
    json_name: "targetAudienceClientId",
    deprecated: false
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :iap_credentials, 0

  field :iap_test_service_account_info, 1,
    type:
      Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo,
    json_name: "iapTestServiceAccountInfo",
    oneof: 0
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :authentication, 0

  field :google_account, 1,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.GoogleAccount,
    json_name: "googleAccount",
    oneof: 0,
    deprecated: true

  field :custom_account, 2,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.CustomAccount,
    json_name: "customAccount",
    oneof: 0

  field :iap_credential, 4,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential,
    json_name: "iapCredential",
    oneof: 0
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :interval_duration_days, 2, type: :int32, json_name: "intervalDurationDays"
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :max_qps, 3, type: :int32, json_name: "maxQps"
  field :starting_urls, 4, repeated: true, type: :string, json_name: "startingUrls"
  field :authentication, 5, type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication

  field :user_agent, 6,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.UserAgent,
    json_name: "userAgent",
    enum: true

  field :blacklist_patterns, 7, repeated: true, type: :string, json_name: "blacklistPatterns"
  field :schedule, 8, type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Schedule

  field :export_to_security_command_center, 10,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.ExportToSecurityCommandCenter,
    json_name: "exportToSecurityCommandCenter",
    enum: true

  field :risk_level, 12,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.RiskLevel,
    json_name: "riskLevel",
    enum: true

  field :managed_scan, 13, type: :bool, json_name: "managedScan"
  field :static_ip_scan, 14, type: :bool, json_name: "staticIpScan"
  field :ignore_http_status_errors, 15, type: :bool, json_name: "ignoreHttpStatusErrors"
end
