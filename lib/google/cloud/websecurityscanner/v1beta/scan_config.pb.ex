defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.UserAgent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :USER_AGENT_UNSPECIFIED | :CHROME_LINUX | :CHROME_ANDROID | :SAFARI_IPHONE

  field :USER_AGENT_UNSPECIFIED, 0
  field :CHROME_LINUX, 1
  field :CHROME_ANDROID, 2
  field :SAFARI_IPHONE, 3
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.TargetPlatform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TARGET_PLATFORM_UNSPECIFIED | :APP_ENGINE | :COMPUTE

  field :TARGET_PLATFORM_UNSPECIFIED, 0
  field :APP_ENGINE, 1
  field :COMPUTE, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.RiskLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RISK_LEVEL_UNSPECIFIED | :NORMAL | :LOW

  field :RISK_LEVEL_UNSPECIFIED, 0
  field :NORMAL, 1
  field :LOW, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.ExportToSecurityCommandCenter do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED | :ENABLED | :DISABLED

  field :EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.GoogleAccount do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.CustomAccount do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication:
            {:google_account,
             Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.GoogleAccount.t()
             | nil}
            | {:custom_account,
               Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.CustomAccount.t()
               | nil}
        }

  defstruct [:authentication]

  oneof :authentication, 0

  field :google_account, 1,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.GoogleAccount,
    json_name: "googleAccount",
    oneof: 0

  field :custom_account, 2,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.CustomAccount,
    json_name: "customAccount",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Schedule do
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

defmodule Google.Cloud.Websecurityscanner.V1beta.ScanConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          max_qps: integer,
          starting_urls: [String.t()],
          authentication:
            Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication.t() | nil,
          user_agent: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.UserAgent.t(),
          blacklist_patterns: [String.t()],
          schedule: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Schedule.t() | nil,
          target_platforms: [Google.Cloud.Websecurityscanner.V1beta.ScanConfig.TargetPlatform.t()],
          export_to_security_command_center:
            Google.Cloud.Websecurityscanner.V1beta.ScanConfig.ExportToSecurityCommandCenter.t(),
          latest_run: Google.Cloud.Websecurityscanner.V1beta.ScanRun.t() | nil,
          risk_level: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.RiskLevel.t()
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
    :target_platforms,
    :export_to_security_command_center,
    :latest_run,
    :risk_level
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :max_qps, 3, type: :int32, json_name: "maxQps"
  field :starting_urls, 4, repeated: true, type: :string, json_name: "startingUrls"
  field :authentication, 5, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Authentication

  field :user_agent, 6,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.UserAgent,
    enum: true,
    json_name: "userAgent"

  field :blacklist_patterns, 7, repeated: true, type: :string, json_name: "blacklistPatterns"
  field :schedule, 8, type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.Schedule

  field :target_platforms, 9,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.TargetPlatform,
    enum: true,
    json_name: "targetPlatforms"

  field :export_to_security_command_center, 10,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.ExportToSecurityCommandCenter,
    enum: true,
    json_name: "exportToSecurityCommandCenter"

  field :latest_run, 11,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanRun,
    json_name: "latestRun"

  field :risk_level, 12,
    type: Google.Cloud.Websecurityscanner.V1beta.ScanConfig.RiskLevel,
    enum: true,
    json_name: "riskLevel"

  def transform_module(), do: nil
end
