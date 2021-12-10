defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.UserAgent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :USER_AGENT_UNSPECIFIED | :CHROME_LINUX | :CHROME_ANDROID | :SAFARI_IPHONE

  field :USER_AGENT_UNSPECIFIED, 0
  field :CHROME_LINUX, 1
  field :CHROME_ANDROID, 2
  field :SAFARI_IPHONE, 3
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.TargetPlatform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TARGET_PLATFORM_UNSPECIFIED | :APP_ENGINE | :COMPUTE

  field :TARGET_PLATFORM_UNSPECIFIED, 0
  field :APP_ENGINE, 1
  field :COMPUTE, 2
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.GoogleAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t()
        }

  defstruct username: "",
            password: ""

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.CustomAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t(),
          login_url: String.t()
        }

  defstruct username: "",
            password: "",
            login_url: ""

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false
  field :login_url, 3, type: :string, json_name: "loginUrl", deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication:
            {:google_account,
             Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.GoogleAccount.t()
             | nil}
            | {:custom_account,
               Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.CustomAccount.t()
               | nil}
        }

  defstruct authentication: nil

  oneof :authentication, 0

  field :google_account, 1,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.GoogleAccount,
    json_name: "googleAccount",
    oneof: 0

  field :custom_account, 2,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.CustomAccount,
    json_name: "customAccount",
    oneof: 0
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          interval_duration_days: integer
        }

  defstruct schedule_time: nil,
            interval_duration_days: 0

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"

  field :interval_duration_days, 2,
    type: :int32,
    json_name: "intervalDurationDays",
    deprecated: false
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ScanConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          max_qps: integer,
          starting_urls: [String.t()],
          authentication:
            Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication.t() | nil,
          user_agent: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.UserAgent.t(),
          blacklist_patterns: [String.t()],
          schedule: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Schedule.t() | nil,
          target_platforms: [
            Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.TargetPlatform.t()
          ],
          latest_run: Google.Cloud.Websecurityscanner.V1alpha.ScanRun.t() | nil
        }

  defstruct name: "",
            display_name: "",
            max_qps: 0,
            starting_urls: [],
            authentication: nil,
            user_agent: :USER_AGENT_UNSPECIFIED,
            blacklist_patterns: [],
            schedule: nil,
            target_platforms: [],
            latest_run: nil

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :max_qps, 3, type: :int32, json_name: "maxQps"

  field :starting_urls, 4,
    repeated: true,
    type: :string,
    json_name: "startingUrls",
    deprecated: false

  field :authentication, 5,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Authentication

  field :user_agent, 6,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.UserAgent,
    json_name: "userAgent",
    enum: true

  field :blacklist_patterns, 7, repeated: true, type: :string, json_name: "blacklistPatterns"
  field :schedule, 8, type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.Schedule

  field :target_platforms, 9,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanConfig.TargetPlatform,
    json_name: "targetPlatforms",
    enum: true

  field :latest_run, 11,
    type: Google.Cloud.Websecurityscanner.V1alpha.ScanRun,
    json_name: "latestRun"
end
