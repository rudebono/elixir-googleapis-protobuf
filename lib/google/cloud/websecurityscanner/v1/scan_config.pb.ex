defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.UserAgent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :USER_AGENT_UNSPECIFIED | :CHROME_LINUX | :CHROME_ANDROID | :SAFARI_IPHONE

  field :USER_AGENT_UNSPECIFIED, 0
  field :CHROME_LINUX, 1
  field :CHROME_ANDROID, 2
  field :SAFARI_IPHONE, 3
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.RiskLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RISK_LEVEL_UNSPECIFIED | :NORMAL | :LOW

  field :RISK_LEVEL_UNSPECIFIED, 0
  field :NORMAL, 1
  field :LOW, 2
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.ExportToSecurityCommandCenter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED | :ENABLED | :DISABLED

  field :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.GoogleAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t()
        }

  defstruct [:username, :password]

  field :username, 1, type: :string
  field :password, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.CustomAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t(),
          login_url: String.t()
        }

  defstruct [:username, :password, :login_url]

  field :username, 1, type: :string
  field :password, 2, type: :string
  field :login_url, 3, type: :string, json_name: "loginUrl"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_audience_client_id: String.t()
        }

  defstruct [:target_audience_client_id]

  field :target_audience_client_id, 1, type: :string, json_name: "targetAudienceClientId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iap_credentials:
            {:iap_test_service_account_info,
             Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo.t()
             | nil}
        }

  defstruct [:iap_credentials]

  oneof :iap_credentials, 0

  field :iap_test_service_account_info, 1,
    type:
      Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo,
    json_name: "iapTestServiceAccountInfo",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication:
            {:google_account,
             Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.GoogleAccount.t() | nil}
            | {:custom_account,
               Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.CustomAccount.t()
               | nil}
            | {:iap_credential,
               Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential.t()
               | nil}
        }

  defstruct [:authentication]

  oneof :authentication, 0

  field :google_account, 1,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.GoogleAccount,
    json_name: "googleAccount",
    oneof: 0

  field :custom_account, 2,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.CustomAccount,
    json_name: "customAccount",
    oneof: 0

  field :iap_credential, 4,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.IapCredential,
    json_name: "iapCredential",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          interval_duration_days: integer
        }

  defstruct [:schedule_time, :interval_duration_days]

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :interval_duration_days, 2, type: :int32, json_name: "intervalDurationDays"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1.ScanConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          max_qps: integer,
          starting_urls: [String.t()],
          authentication: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication.t() | nil,
          user_agent: Google.Cloud.Websecurityscanner.V1.ScanConfig.UserAgent.t(),
          blacklist_patterns: [String.t()],
          schedule: Google.Cloud.Websecurityscanner.V1.ScanConfig.Schedule.t() | nil,
          export_to_security_command_center:
            Google.Cloud.Websecurityscanner.V1.ScanConfig.ExportToSecurityCommandCenter.t(),
          risk_level: Google.Cloud.Websecurityscanner.V1.ScanConfig.RiskLevel.t(),
          managed_scan: boolean,
          static_ip_scan: boolean
        }

  defstruct [
    :name,
    :display_name,
    :max_qps,
    :starting_urls,
    :authentication,
    :user_agent,
    :blacklist_patterns,
    :schedule,
    :export_to_security_command_center,
    :risk_level,
    :managed_scan,
    :static_ip_scan
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :max_qps, 3, type: :int32, json_name: "maxQps"
  field :starting_urls, 4, repeated: true, type: :string, json_name: "startingUrls"
  field :authentication, 5, type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Authentication

  field :user_agent, 6,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.UserAgent,
    enum: true,
    json_name: "userAgent"

  field :blacklist_patterns, 7, repeated: true, type: :string, json_name: "blacklistPatterns"
  field :schedule, 8, type: Google.Cloud.Websecurityscanner.V1.ScanConfig.Schedule

  field :export_to_security_command_center, 10,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.ExportToSecurityCommandCenter,
    enum: true,
    json_name: "exportToSecurityCommandCenter"

  field :risk_level, 12,
    type: Google.Cloud.Websecurityscanner.V1.ScanConfig.RiskLevel,
    enum: true,
    json_name: "riskLevel"

  field :managed_scan, 13, type: :bool, json_name: "managedScan"
  field :static_ip_scan, 14, type: :bool, json_name: "staticIpScan"

  def transform_module(), do: nil
end
