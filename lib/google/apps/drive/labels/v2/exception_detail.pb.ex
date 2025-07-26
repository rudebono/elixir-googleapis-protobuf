defmodule Google.Apps.Drive.Labels.V2.ExceptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXCEPTION_TYPE_UNSPECIFIED, 0
  field :FIELD_REQUIRED, 1
  field :METAMODEL_ALREADY_EXISTS, 2
  field :METAMODEL_NOT_FOUND, 3
  field :ILLEGAL_METAMODEL_STATE_TRANSITION, 4
  field :INVALID_METAMODEL_DEPRECATION_POLICY, 5
  field :METAMODEL_DELETION_DENIED_UNTIL, 6
  field :INVALID_FIELD, 7
  field :METAMODEL_PRECONDITION_FAILED, 8
  field :DUPLICATE_FIELD_KEY, 9
  field :ILLEGAL_FIELD_REMOVAL, 10
  field :ILLEGAL_FIELD_OPTIONS_FOR_FIELD, 11
  field :UNSUPPORTED_CHANGE_TO_PUBLISHED_METAMODEL, 12
  field :ILLEGAL_METAMODEL_STATE_TRANSITION_IN_UPDATE, 13
  field :PAGE_TOKEN_EXPIRED, 14
  field :NOT_AUTHORIZED, 15
  field :ILLEGAL_FIELD_STATE_TRANSITION, 16
  field :ILLEGAL_CHOICE_SET_OPTION_STATE_TRANSITION, 17
  field :INVALID_CHOICE_SET_OPTIONS, 18
  field :INVALID_FIELD_KEY, 19
  field :INVALID_FIELD_PROPERTY_RANGE, 20
  field :INVALID_LOCALIZED_STRING, 21
  field :ILLEGAL_CHANGE_TO_PUBLISHED_FIELD, 22
  field :INVALID_FIELD_UPDATE_NOT_INCLUSIVE, 23
  field :INVALID_CHOICE_SET_STATE, 24
  field :INTERNAL_SERVER_ERROR, 500
end

defmodule Google.Apps.Drive.Labels.V2.ExceptionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_type, 1,
    type: Google.Apps.Drive.Labels.V2.ExceptionType,
    json_name: "errorType",
    enum: true
end
