defmodule Google.Apps.Drive.Labels.V2beta.LabelView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LABEL_VIEW_BASIC, 0
  field :LABEL_VIEW_FULL, 1
end

defmodule Google.Apps.Drive.Labels.V2beta.WriteControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :control, 0

  field :required_revision_id, 1, type: :string, json_name: "requiredRevisionId", oneof: 0
end

defmodule Google.Apps.Drive.Labels.V2beta.GetUserCapabilitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :customer, 2, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.CreateLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :label, 1, type: Google.Apps.Drive.Labels.V2beta.Label, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Apps.Drive.Labels.V2beta.GetLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
  field :language_code, 3, type: :string, json_name: "languageCode"
  field :view, 4, type: Google.Apps.Drive.Labels.V2beta.LabelView, enum: true
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.Request do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :kind, 0

  field :update_label, 1,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateLabelPropertiesRequest,
    json_name: "updateLabel",
    oneof: 0

  field :create_field, 2,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.CreateFieldRequest,
    json_name: "createField",
    oneof: 0

  field :update_field, 3,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateFieldPropertiesRequest,
    json_name: "updateField",
    oneof: 0

  field :update_field_type, 4,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateFieldTypeRequest,
    json_name: "updateFieldType",
    oneof: 0

  field :enable_field, 5,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.EnableFieldRequest,
    json_name: "enableField",
    oneof: 0

  field :disable_field, 6,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DisableFieldRequest,
    json_name: "disableField",
    oneof: 0

  field :delete_field, 7,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DeleteFieldRequest,
    json_name: "deleteField",
    oneof: 0

  field :create_selection_choice, 8,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.CreateSelectionChoiceRequest,
    json_name: "createSelectionChoice",
    oneof: 0

  field :update_selection_choice_properties, 9,
    type:
      Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateSelectionChoicePropertiesRequest,
    json_name: "updateSelectionChoiceProperties",
    oneof: 0

  field :enable_selection_choice, 10,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.EnableSelectionChoiceRequest,
    json_name: "enableSelectionChoice",
    oneof: 0

  field :disable_selection_choice, 11,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DisableSelectionChoiceRequest,
    json_name: "disableSelectionChoice",
    oneof: 0

  field :delete_selection_choice, 12,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DeleteSelectionChoiceRequest,
    json_name: "deleteSelectionChoice",
    oneof: 0
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateLabelPropertiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :properties, 2, type: Google.Apps.Drive.Labels.V2beta.Label.Properties, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DisableFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :id, 2, type: :string, deprecated: false

  field :disabled_policy, 3,
    type: Google.Apps.Drive.Labels.V2beta.Lifecycle.DisabledPolicy,
    json_name: "disabledPolicy",
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.EnableFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DeleteFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.CreateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field, 1, type: Google.Apps.Drive.Labels.V2beta.Field, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateFieldPropertiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :id, 2, type: :string, deprecated: false
  field :properties, 3, type: Google.Apps.Drive.Labels.V2beta.Field.Properties, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateFieldTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :type_options, 0

  field :text_options, 3,
    type: Google.Apps.Drive.Labels.V2beta.Field.TextOptions,
    json_name: "textOptions",
    oneof: 0

  field :integer_options, 5,
    type: Google.Apps.Drive.Labels.V2beta.Field.IntegerOptions,
    json_name: "integerOptions",
    oneof: 0

  field :date_options, 6,
    type: Google.Apps.Drive.Labels.V2beta.Field.DateOptions,
    json_name: "dateOptions",
    oneof: 0

  field :selection_options, 7,
    type: Google.Apps.Drive.Labels.V2beta.Field.SelectionOptions,
    json_name: "selectionOptions",
    oneof: 0

  field :user_options, 8,
    type: Google.Apps.Drive.Labels.V2beta.Field.UserOptions,
    json_name: "userOptions",
    oneof: 0

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.CreateSelectionChoiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_id, 1, type: :string, json_name: "fieldId", deprecated: false

  field :choice, 2,
    type: Google.Apps.Drive.Labels.V2beta.Field.SelectionOptions.Choice,
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.UpdateSelectionChoicePropertiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :field_id, 2, type: :string, json_name: "fieldId", deprecated: false
  field :id, 3, type: :string, deprecated: false

  field :properties, 4,
    type: Google.Apps.Drive.Labels.V2beta.Field.SelectionOptions.Choice.Properties,
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DeleteSelectionChoiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_id, 1, type: :string, json_name: "fieldId", deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.DisableSelectionChoiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :field_id, 2, type: :string, json_name: "fieldId", deprecated: false
  field :id, 3, type: :string, deprecated: false

  field :disabled_policy, 4,
    type: Google.Apps.Drive.Labels.V2beta.Lifecycle.DisabledPolicy,
    json_name: "disabledPolicy",
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.EnableSelectionChoiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_id, 1, type: :string, json_name: "fieldId", deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :write_control, 2,
    type: Google.Apps.Drive.Labels.V2beta.WriteControl,
    json_name: "writeControl"

  field :requests, 3,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelRequest.Request

  field :use_admin_access, 4, type: :bool, json_name: "useAdminAccess"
  field :view, 5, type: Google.Apps.Drive.Labels.V2beta.LabelView, enum: true
  field :language_code, 6, type: :string, json_name: "languageCode"
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.Response do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :response, 0

  field :update_label, 1,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateLabelPropertiesResponse,
    json_name: "updateLabel",
    oneof: 0

  field :create_field, 2,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.CreateFieldResponse,
    json_name: "createField",
    oneof: 0

  field :update_field, 3,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateFieldPropertiesResponse,
    json_name: "updateField",
    oneof: 0

  field :update_field_type, 4,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateFieldTypeResponse,
    json_name: "updateFieldType",
    oneof: 0

  field :enable_field, 5,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.EnableFieldResponse,
    json_name: "enableField",
    oneof: 0

  field :disable_field, 6,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DisableFieldResponse,
    json_name: "disableField",
    oneof: 0

  field :delete_field, 7,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DeleteFieldResponse,
    json_name: "deleteField",
    oneof: 0

  field :create_selection_choice, 8,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.CreateSelectionChoiceResponse,
    json_name: "createSelectionChoice",
    oneof: 0

  field :update_selection_choice_properties, 9,
    type:
      Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateSelectionChoicePropertiesResponse,
    json_name: "updateSelectionChoiceProperties",
    oneof: 0

  field :enable_selection_choice, 10,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.EnableSelectionChoiceResponse,
    json_name: "enableSelectionChoice",
    oneof: 0

  field :disable_selection_choice, 11,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DisableSelectionChoiceResponse,
    json_name: "disableSelectionChoice",
    oneof: 0

  field :delete_selection_choice, 12,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DeleteSelectionChoiceResponse,
    json_name: "deleteSelectionChoice",
    oneof: 0
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateLabelPropertiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.CreateFieldResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :priority, 2, type: :int32
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateFieldPropertiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :priority, 1, type: :int32
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateFieldTypeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.EnableFieldResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DisableFieldResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DeleteFieldResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.CreateSelectionChoiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_id, 1, type: :string, json_name: "fieldId"
  field :id, 2, type: :string
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.UpdateSelectionChoicePropertiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :priority, 1, type: :int32
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.EnableSelectionChoiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DisableSelectionChoiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.DeleteSelectionChoiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :responses, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.DeltaUpdateLabelResponse.Response

  field :updated_label, 6, type: Google.Apps.Drive.Labels.V2beta.Label, json_name: "updatedLabel"
end

defmodule Google.Apps.Drive.Labels.V2beta.UpdateLabelCopyModeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :copy_mode, 2,
    type: Google.Apps.Drive.Labels.V2beta.Label.AppliedLabelPolicy.CopyMode,
    json_name: "copyMode",
    enum: true,
    deprecated: false

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess"
  field :language_code, 4, type: :string, json_name: "languageCode"
  field :view, 5, type: Google.Apps.Drive.Labels.V2beta.LabelView, enum: true
end

defmodule Google.Apps.Drive.Labels.V2beta.GetLabelLimitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :access, 0

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess", oneof: 0

  field :minimum_role, 4,
    type: Google.Apps.Drive.Labels.V2beta.LabelPermission.LabelRole,
    json_name: "minimumRole",
    enum: true,
    oneof: 0

  field :published_only, 1, type: :bool, json_name: "publishedOnly"
  field :customer, 2, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode"
  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :view, 8, type: Google.Apps.Drive.Labels.V2beta.LabelView, enum: true
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :labels, 1, repeated: true, type: Google.Apps.Drive.Labels.V2beta.Label
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Drive.Labels.V2beta.CreateLabelPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :label_permission, 2,
    type: Google.Apps.Drive.Labels.V2beta.LabelPermission,
    json_name: "labelPermission",
    deprecated: false

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess"
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelPermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :label_permissions, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.LabelPermission,
    json_name: "labelPermissions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Drive.Labels.V2beta.UpdateLabelPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :label_permission, 2,
    type: Google.Apps.Drive.Labels.V2beta.LabelPermission,
    json_name: "labelPermission",
    deprecated: false

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess"
end

defmodule Google.Apps.Drive.Labels.V2beta.DeleteLabelPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
end

defmodule Google.Apps.Drive.Labels.V2beta.BatchUpdateLabelPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.UpdateLabelPermissionRequest,
    deprecated: false

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess"
end

defmodule Google.Apps.Drive.Labels.V2beta.BatchUpdateLabelPermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :permissions, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.LabelPermission,
    deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.BatchDeleteLabelPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :requests, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.DeleteLabelPermissionRequest,
    deprecated: false

  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
  field :parent, 3, type: :string, deprecated: false
end

defmodule Google.Apps.Drive.Labels.V2beta.DisableLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :name, 2, type: :string, deprecated: false
  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess"

  field :write_control, 4,
    type: Google.Apps.Drive.Labels.V2beta.WriteControl,
    json_name: "writeControl"

  field :disabled_policy, 5,
    type: Google.Apps.Drive.Labels.V2beta.Lifecycle.DisabledPolicy,
    json_name: "disabledPolicy"

  field :language_code, 6, type: :string, json_name: "languageCode"
end

defmodule Google.Apps.Drive.Labels.V2beta.PublishLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"

  field :write_control, 3,
    type: Google.Apps.Drive.Labels.V2beta.WriteControl,
    json_name: "writeControl"

  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Apps.Drive.Labels.V2beta.EnableLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"

  field :write_control, 3,
    type: Google.Apps.Drive.Labels.V2beta.WriteControl,
    json_name: "writeControl"

  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Apps.Drive.Labels.V2beta.DeleteLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"

  field :write_control, 3,
    type: Google.Apps.Drive.Labels.V2beta.WriteControl,
    json_name: "writeControl"
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelLocksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Drive.Labels.V2beta.ListLabelLocksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :label_locks, 1,
    repeated: true,
    type: Google.Apps.Drive.Labels.V2beta.LabelLock,
    json_name: "labelLocks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end