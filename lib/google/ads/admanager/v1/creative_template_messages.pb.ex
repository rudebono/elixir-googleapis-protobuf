defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.AssetCreativeTemplateVariable.MimeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MIME_TYPE_UNSPECIFIED, 0
  field :JPG, 1
  field :PNG, 2
  field :GIF, 3
end

defmodule Google.Ads.Admanager.V1.CreativeTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :description, 3, proto3_optional: true, type: :string, deprecated: false
  field :snippet, 4, proto3_optional: true, type: :string, deprecated: false

  field :status, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CreativeTemplateStatusEnum.CreativeTemplateStatus,
    enum: true,
    deprecated: false

  field :type, 7,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CreativeTemplateTypeEnum.CreativeTemplateType,
    enum: true,
    deprecated: false

  field :interstitial, 8, proto3_optional: true, type: :bool, deprecated: false

  field :native_eligible, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "nativeEligible",
    deprecated: false

  field :native_video_eligible, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "nativeVideoEligible",
    deprecated: false

  field :safe_frame_compatible, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "safeFrameCompatible",
    deprecated: false

  field :variables, 14,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.AssetCreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_types, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.AssetCreativeTemplateVariable.MimeType,
    json_name: "mimeTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.ListStringCreativeTemplateVariable.VariableChoice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :label, 1, proto3_optional: true, type: :string, deprecated: false
  field :value, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.ListStringCreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_value, 1,
    proto3_optional: true,
    type: :string,
    json_name: "defaultValue",
    deprecated: false

  field :sample_value, 2,
    proto3_optional: true,
    type: :string,
    json_name: "sampleValue",
    deprecated: false

  field :choices, 3,
    repeated: true,
    type:
      Google.Ads.Admanager.V1.CreativeTemplateVariable.ListStringCreativeTemplateVariable.VariableChoice,
    deprecated: false

  field :allow_other_choice, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "allowOtherChoice",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.LongCreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_value, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "defaultValue",
    deprecated: false

  field :sample_value, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "sampleValue",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.StringCreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_value, 1,
    proto3_optional: true,
    type: :string,
    json_name: "defaultValue",
    deprecated: false

  field :sample_value, 2,
    proto3_optional: true,
    type: :string,
    json_name: "sampleValue",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable.UrlCreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_value, 1,
    proto3_optional: true,
    type: :string,
    json_name: "defaultValue",
    deprecated: false

  field :sample_value, 2,
    proto3_optional: true,
    type: :string,
    json_name: "sampleValue",
    deprecated: false

  field :url_type, 4,
    proto3_optional: true,
    type:
      Google.Ads.Admanager.V1.CreativeTemplateVariableUrlTypeEnum.CreativeTemplateVariableUrlType,
    json_name: "urlType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreativeTemplateVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :SubType, 0

  field :asset_variable, 5,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.AssetCreativeTemplateVariable,
    json_name: "assetVariable",
    oneof: 0,
    deprecated: false

  field :list_string_variable, 7,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.ListStringCreativeTemplateVariable,
    json_name: "listStringVariable",
    oneof: 0,
    deprecated: false

  field :long_variable, 8,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.LongCreativeTemplateVariable,
    json_name: "longVariable",
    oneof: 0,
    deprecated: false

  field :string_variable, 9,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.StringCreativeTemplateVariable,
    json_name: "stringVariable",
    oneof: 0,
    deprecated: false

  field :url_variable, 10,
    type: Google.Ads.Admanager.V1.CreativeTemplateVariable.UrlCreativeTemplateVariable,
    json_name: "urlVariable",
    oneof: 0,
    deprecated: false

  field :label, 1, proto3_optional: true, type: :string, deprecated: false

  field :unique_display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "uniqueDisplayName",
    deprecated: false

  field :description, 3, proto3_optional: true, type: :string, deprecated: false
  field :required, 4, proto3_optional: true, type: :bool, deprecated: false
end
