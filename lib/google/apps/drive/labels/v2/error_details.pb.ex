defmodule Google.Apps.Drive.Labels.V2.InvalidArgument.FieldViolation.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :FIELD_REQUIRED, 1
  field :INVALID_VALUE, 2
  field :VALUE_OUT_OF_RANGE, 3
  field :STRING_VALUE_TOO_LONG, 4
  field :MAX_ENTRIES_EXCEEDED, 5
  field :FIELD_NOT_FOUND, 6
  field :CHOICE_NOT_FOUND, 7
end

defmodule Google.Apps.Drive.Labels.V2.PreconditionFailure.Violation.Reason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :CANNOT_DISABLE, 1
  field :CANNOT_ENABLE, 2
  field :CANNOT_PUBLISH, 3
  field :CANNOT_UNPUBLISH, 4
  field :CANNOT_DELETE, 5
  field :CANNOT_RESTRICT_RANGE, 6
  field :CANNOT_CHANGE_PUBLISHED_FIELD, 7
  field :CANNOT_CREATE_MORE_LABELS, 8
  field :CANNOT_CHANGE_PUBLISHED_FIELD_TYPE, 9
  field :CANNOT_MODIFY_LOCKED_COMPONENT, 10
  field :UNSUPPORT_ENABLED_APP_SETTINGS, 11
end

defmodule Google.Apps.Drive.Labels.V2.InvalidArgument.FieldViolation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :field, 1, type: :string

  field :reason, 2,
    type: Google.Apps.Drive.Labels.V2.InvalidArgument.FieldViolation.Reason,
    enum: true

  field :display_message, 3, type: :string, json_name: "displayMessage"
end

defmodule Google.Apps.Drive.Labels.V2.InvalidArgument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :field_violations, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2.InvalidArgument.FieldViolation,
    json_name: "fieldViolations"
end

defmodule Google.Apps.Drive.Labels.V2.PreconditionFailure.Violation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :field, 1, type: :string

  field :reason, 2,
    type: Google.Apps.Drive.Labels.V2.PreconditionFailure.Violation.Reason,
    enum: true

  field :display_message, 3, type: :string, json_name: "displayMessage"
end

defmodule Google.Apps.Drive.Labels.V2.PreconditionFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :violation, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2.PreconditionFailure.Violation
end
