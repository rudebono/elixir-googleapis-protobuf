defmodule Google.Shopping.Merchant.Issueresolution.V1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.ContentOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTENT_OPTION_UNSPECIFIED, 0
  field :PRE_RENDERED_HTML, 1
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.UserInputActionRenderingOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :USER_INPUT_ACTION_RENDERING_OPTION_UNSPECIFIED, 0
  field :REDIRECT_TO_MERCHANT_CENTER, 1
  field :BUILT_IN_USER_INPUT_ACTIONS, 2
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction.BuiltInSimpleActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BUILT_IN_SIMPLE_ACTION_TYPE_UNSPECIFIED, 0
  field :VERIFY_PHONE, 1
  field :CLAIM_WEBSITE, 2
  field :ADD_PRODUCTS, 3
  field :ADD_CONTACT_INFO, 4
  field :LINK_ADS_ACCOUNT, 5
  field :ADD_BUSINESS_REGISTRATION_NUMBER, 6
  field :EDIT_ITEM_ATTRIBUTE, 7
  field :FIX_ACCOUNT_ISSUE, 8
  field :SHOW_ADDITIONAL_CONTENT, 9
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField.TextInput.TextInputType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEXT_INPUT_TYPE_UNSPECIFIED, 0
  field :GENERIC_SHORT_TEXT, 1
  field :GENERIC_LONG_TEXT, 2
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip.TooltipIconStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TOOLTIP_ICON_STYLE_UNSPECIFIED, 0
  field :INFO, 1
  field :QUESTION, 2
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Callout.CalloutStyleHint do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CALLOUT_STYLE_HINT_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.ExternalAction.ExternalActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXTERNAL_ACTION_TYPE_UNSPECIFIED, 0
  field :REVIEW_PRODUCT_ISSUE_IN_MERCHANT_CENTER, 1
  field :REVIEW_ACCOUNT_ISSUE_IN_MERCHANT_CENTER, 2
  field :LEGAL_APPEAL_IN_HELP_CENTER, 3
  field :VERIFY_IDENTITY_IN_MERCHANT_CENTER, 4
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderAccountIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rendered_issues, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.RenderedIssue,
    json_name: "renderedIssues"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderAccountIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false

  field :payload, 4,
    type: Google.Shopping.Merchant.Issueresolution.V1.RenderIssuesRequestPayload,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderIssuesRequestPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content_option, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.ContentOption,
    json_name: "contentOption",
    enum: true,
    deprecated: false

  field :user_input_action_option, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.UserInputActionRenderingOption,
    json_name: "userInputActionOption",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderProductIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rendered_issues, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.RenderedIssue,
    json_name: "renderedIssues"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderProductIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false

  field :payload, 4,
    type: Google.Shopping.Merchant.Issueresolution.V1.RenderIssuesRequestPayload,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.RenderedIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  oneof :out_of_court_dispute_settlement, 1

  field :prerendered_content, 3, type: :string, json_name: "prerenderedContent", oneof: 0

  field :prerendered_out_of_court_dispute_settlement, 5,
    type: :string,
    json_name: "prerenderedOutOfCourtDisputeSettlement",
    oneof: 1

  field :title, 1, type: :string
  field :impact, 2, type: Google.Shopping.Merchant.Issueresolution.V1.Impact
  field :actions, 4, repeated: true, type: Google.Shopping.Merchant.Issueresolution.V1.Action
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Impact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
  field :severity, 2, type: Google.Shopping.Merchant.Issueresolution.V1.Severity, enum: true

  field :breakdowns, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.Breakdown
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Breakdown.Region do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Breakdown do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :regions, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.Breakdown.Region

  field :details, 4, repeated: true, type: :string
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Action.Reason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :detail, 2, proto3_optional: true, type: :string

  field :action, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.Action,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :builtin_simple_action, 2,
    type: Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction,
    json_name: "builtinSimpleAction",
    oneof: 0

  field :external_action, 3,
    type: Google.Shopping.Merchant.Issueresolution.V1.ExternalAction,
    json_name: "externalAction",
    oneof: 0

  field :builtin_user_input_action, 7,
    type: Google.Shopping.Merchant.Issueresolution.V1.BuiltInUserInputAction,
    json_name: "builtinUserInputAction",
    oneof: 0

  field :button_label, 4, type: :string, json_name: "buttonLabel"
  field :is_available, 5, type: :bool, json_name: "isAvailable"

  field :reasons, 6,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.Action.Reason
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction.AdditionalContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :paragraphs, 2, repeated: true, type: :string
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction.BuiltInSimpleActionType,
    enum: true

  field :attribute_code, 2, proto3_optional: true, type: :string, json_name: "attributeCode"

  field :additional_content, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.BuiltInSimpleAction.AdditionalContent,
    json_name: "additionalContent"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.BuiltInUserInputAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_context, 1, type: :string, json_name: "actionContext"
  field :flows, 3, repeated: true, type: Google.Shopping.Merchant.Issueresolution.V1.ActionFlow
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.ActionFlow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :label, 2, type: :string
  field :inputs, 3, repeated: true, type: Google.Shopping.Merchant.Issueresolution.V1.InputField
  field :dialog_title, 4, type: :string, json_name: "dialogTitle"

  field :dialog_message, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip,
    json_name: "dialogMessage"

  field :dialog_callout, 8,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.Callout,
    json_name: "dialogCallout"

  field :dialog_button_label, 9, type: :string, json_name: "dialogButtonLabel"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField.TextInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField.TextInput.TextInputType,
    enum: true

  field :additional_info, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip,
    json_name: "additionalInfo"

  field :format_info, 3, proto3_optional: true, type: :string, json_name: "formatInfo"
  field :aria_label, 4, proto3_optional: true, type: :string, json_name: "ariaLabel"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField.ChoiceInput.ChoiceInputOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :label, 2, type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip

  field :additional_input, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField,
    json_name: "additionalInput"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField.ChoiceInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :options, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField.ChoiceInput.ChoiceInputOption
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField.CheckboxInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value_input, 0

  field :text_input, 4,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField.TextInput,
    json_name: "textInput",
    oneof: 0

  field :choice_input, 5,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField.ChoiceInput,
    json_name: "choiceInput",
    oneof: 0

  field :checkbox_input, 6,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputField.CheckboxInput,
    json_name: "checkboxInput",
    oneof: 0

  field :id, 1, type: :string
  field :label, 2, type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip
  field :required, 3, type: :bool
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  oneof :tooltip_value, 1

  field :simple_value, 1, type: :string, json_name: "simpleValue", oneof: 0
  field :simple_tooltip_value, 2, type: :string, json_name: "simpleTooltipValue", oneof: 1

  field :tooltip_icon_style, 3,
    type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip.TooltipIconStyle,
    json_name: "tooltipIconStyle",
    enum: true
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.Callout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :style_hint, 1,
    type: Google.Shopping.Merchant.Issueresolution.V1.Callout.CalloutStyleHint,
    json_name: "styleHint",
    enum: true

  field :full_message, 3,
    type: Google.Shopping.Merchant.Issueresolution.V1.TextWithTooltip,
    json_name: "fullMessage"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.ExternalAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Issueresolution.V1.ExternalAction.ExternalActionType,
    enum: true

  field :uri, 2, type: :string
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.TriggerActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :payload, 2,
    type: Google.Shopping.Merchant.Issueresolution.V1.TriggerActionPayload,
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.TriggerActionPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_context, 1, type: :string, json_name: "actionContext", deprecated: false

  field :action_input, 2,
    type: Google.Shopping.Merchant.Issueresolution.V1.ActionInput,
    json_name: "actionInput",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.TriggerActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.ActionInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_flow_id, 1, type: :string, json_name: "actionFlowId", deprecated: false

  field :input_values, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputValue,
    json_name: "inputValues",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputValue.TextInputValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputValue.ChoiceInputValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :choice_input_option_id, 1,
    type: :string,
    json_name: "choiceInputOptionId",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputValue.CheckboxInputValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.InputValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :text_input_value, 2,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputValue.TextInputValue,
    json_name: "textInputValue",
    oneof: 0

  field :choice_input_value, 3,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputValue.ChoiceInputValue,
    json_name: "choiceInputValue",
    oneof: 0

  field :checkbox_input_value, 4,
    type: Google.Shopping.Merchant.Issueresolution.V1.InputValue.CheckboxInputValue,
    json_name: "checkboxInputValue",
    oneof: 0

  field :input_field_id, 1, type: :string, json_name: "inputFieldId", deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.IssueResolutionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.issueresolution.v1.IssueResolutionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RenderAccountIssues,
      Google.Shopping.Merchant.Issueresolution.V1.RenderAccountIssuesRequest,
      Google.Shopping.Merchant.Issueresolution.V1.RenderAccountIssuesResponse

  rpc :RenderProductIssues,
      Google.Shopping.Merchant.Issueresolution.V1.RenderProductIssuesRequest,
      Google.Shopping.Merchant.Issueresolution.V1.RenderProductIssuesResponse

  rpc :TriggerAction,
      Google.Shopping.Merchant.Issueresolution.V1.TriggerActionRequest,
      Google.Shopping.Merchant.Issueresolution.V1.TriggerActionResponse
end

defmodule Google.Shopping.Merchant.Issueresolution.V1.IssueResolutionService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Issueresolution.V1.IssueResolutionService.Service
end
