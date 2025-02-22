defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RESOLVED, 1
  field :UNRESOLVED, 2
  field :EXCEPTION, 3
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.RemediationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REMEDIATION_TYPE_UNSPECIFIED, 0
  field :REMEDIATION_BOOLEAN_ORG_POLICY_VIOLATION, 1
  field :REMEDIATION_LIST_ALLOWED_VALUES_ORG_POLICY_VIOLATION, 2
  field :REMEDIATION_LIST_DENIED_VALUES_ORG_POLICY_VIOLATION, 3
  field :REMEDIATION_RESTRICT_CMEK_CRYPTO_KEY_PROJECTS_ORG_POLICY_VIOLATION, 4
  field :REMEDIATION_RESOURCE_VIOLATION, 5
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions.Gcloud do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gcloud_commands, 1, repeated: true, type: :string, json_name: "gcloudCommands"
  field :steps, 2, repeated: true, type: :string
  field :additional_links, 3, repeated: true, type: :string, json_name: "additionalLinks"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions.Console do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :console_uris, 1, repeated: true, type: :string, json_name: "consoleUris"
  field :steps, 2, repeated: true, type: :string
  field :additional_links, 3, repeated: true, type: :string, json_name: "additionalLinks"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gcloud_instructions, 1,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions.Gcloud,
    json_name: "gcloudInstructions"

  field :console_instructions, 2,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions.Console,
    json_name: "consoleInstructions"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instructions, 1,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.Instructions,
    deprecated: false

  field :compliant_values, 2, repeated: true, type: :string, json_name: "compliantValues"

  field :remediation_type, 3,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation.RemediationType,
    json_name: "remediationType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Violation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :begin_time, 3, type: Google.Protobuf.Timestamp, json_name: "beginTime", deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :resolve_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "resolveTime",
    deprecated: false

  field :category, 6, type: :string, deprecated: false

  field :state, 7,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.State,
    enum: true,
    deprecated: false

  field :non_compliant_org_policy, 8,
    type: :string,
    json_name: "nonCompliantOrgPolicy",
    deprecated: false

  field :folder_id, 9, type: :int64, json_name: "folderId"

  field :remediation, 13,
    type: Google.Cloud.Cloudcontrolspartner.V1.Violation.Remediation,
    deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListViolationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :interval, 6, type: Google.Type.Interval, deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListViolationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :violations, 1, repeated: true, type: Google.Cloud.Cloudcontrolspartner.V1.Violation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.GetViolationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
