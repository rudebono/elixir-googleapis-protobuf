defmodule Google.Cloud.Retail.V2alpha.LoggingConfig.LoggingLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOGGING_LEVEL_UNSPECIFIED, 0
  field :LOGGING_DISABLED, 1
  field :LOG_ERRORS_AND_ABOVE, 2
  field :LOG_WARNINGS_AND_ABOVE, 3
  field :LOG_ALL, 4
end

defmodule Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy.EnrollStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENROLL_STATUS_UNSPECIFIED, 0
  field :ENROLLED, 1
  field :DECLINED, 2
end

defmodule Google.Cloud.Retail.V2alpha.LoggingConfig.LogGenerationRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :logging_level, 1,
    type: Google.Cloud.Retail.V2alpha.LoggingConfig.LoggingLevel,
    json_name: "loggingLevel",
    enum: true

  field :info_log_sample_rate, 2,
    proto3_optional: true,
    type: :float,
    json_name: "infoLogSampleRate"
end

defmodule Google.Cloud.Retail.V2alpha.LoggingConfig.ServiceLogGenerationRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false

  field :log_generation_rule, 3,
    type: Google.Cloud.Retail.V2alpha.LoggingConfig.LogGenerationRule,
    json_name: "logGenerationRule"
end

defmodule Google.Cloud.Retail.V2alpha.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :default_log_generation_rule, 2,
    type: Google.Cloud.Retail.V2alpha.LoggingConfig.LogGenerationRule,
    json_name: "defaultLogGenerationRule"

  field :service_log_generation_rules, 4,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.LoggingConfig.ServiceLogGenerationRule,
    json_name: "serviceLogGenerationRules"
end

defmodule Google.Cloud.Retail.V2alpha.Project do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :enrolled_solutions, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SolutionType,
    json_name: "enrolledSolutions",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy.Recipient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :alert_group, 1, type: :string, json_name: "alertGroup"

  field :enroll_status, 2,
    type: Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy.EnrollStatus,
    json_name: "enrollStatus",
    enum: true

  field :recipients, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy.Recipient
end

defmodule Google.Cloud.Retail.V2alpha.AlertConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :alert_policies, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.AlertConfig.AlertPolicy,
    json_name: "alertPolicies"
end