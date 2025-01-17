defmodule Google.Cloud.Dialogflow.V2beta1.IntentView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_FULL, 1
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.WebhookState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :WEBHOOK_STATE_UNSPECIFIED, 0
  field :WEBHOOK_STATE_ENABLED, 1
  field :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EXAMPLE, 1
  field :TEMPLATE, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :FACEBOOK, 1
  field :SLACK, 2
  field :TELEGRAM, 3
  field :KIK, 4
  field :SKYPE, 5
  field :LINE, 6
  field :VIBER, 7
  field :ACTIONS_ON_GOOGLE, 8
  field :TELEPHONY, 10
  field :GOOGLE_HANGOUTS, 11
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.CardWidth do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CARD_WIDTH_UNSPECIFIED, 0
  field :SMALL, 1
  field :MEDIUM, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.CardOrientation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CARD_ORIENTATION_UNSPECIFIED, 0
  field :HORIZONTAL, 1
  field :VERTICAL, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.ThumbnailImageAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED, 0
  field :LEFT, 1
  field :RIGHT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.Height do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HEIGHT_UNSPECIFIED, 0
  field :SHORT, 1
  field :MEDIUM, 2
  field :TALL, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESPONSE_MEDIA_TYPE_UNSPECIFIED, 0
  field :AUDIO, 1
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.ImageDisplayOptions do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
  field :BLURRED_BACKGROUND, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :URL_TYPE_HINT_UNSPECIFIED, 0
  field :AMP_ACTION, 1
  field :AMP_CONTENT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.HorizontalAlignment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :alias, 3, type: :string
  field :user_defined, 4, type: :bool, json_name: "userDefined"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Type,
    enum: true,
    deprecated: false

  field :parts, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Part,
    deprecated: false

  field :times_added_count, 4, type: :int32, json_name: "timesAddedCount", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :value, 3, type: :string
  field :default_value, 4, type: :string, json_name: "defaultValue"
  field :entity_type_display_name, 5, type: :string, json_name: "entityTypeDisplayName"
  field :mandatory, 6, type: :bool
  field :prompts, 7, repeated: true, type: :string
  field :is_list, 8, type: :bool, json_name: "isList"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Text do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :accessibility_text, 2, type: :string, json_name: "accessibilityText"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.QuickReplies do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
  field :quick_replies, 2, repeated: true, type: :string, json_name: "quickReplies"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.Button do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
  field :postback, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image_uri, 3, type: :string, json_name: "imageUri"

  field :buttons, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.Button
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text_to_speech, 1, type: :string, json_name: "textToSpeech"
  field :ssml, 2, type: :string
  field :display_text, 3, type: :string, json_name: "displayText"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponses do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :simple_responses, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponse,
    json_name: "simpleResponses"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.OpenUriAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string

  field :open_uri_action, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.OpenUriAction,
    json_name: "openUriAction"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :formatted_text, 3, type: :string, json_name: "formattedText"
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image

  field :buttons, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestion
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.LinkOutSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_name, 1, type: :string, json_name: "destinationName"
  field :uri, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :info, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.Item

  field :subtitle, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :info, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.Item
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :synonyms, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyPlayAudio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :audio_uri, 1, type: :string, json_name: "audioUri"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonySynthesizeSpeech do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyTransferCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string

  field :rbm_suggestion, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion,
    json_name: "rbmSuggestion"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :card_width, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.CardWidth,
    json_name: "cardWidth",
    enum: true

  field :card_contents, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent,
    json_name: "cardContents"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :card_orientation, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.CardOrientation,
    json_name: "cardOrientation",
    enum: true

  field :thumbnail_image_alignment, 2,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.ThumbnailImageAlignment,
    json_name: "thumbnailImageAlignment",
    enum: true

  field :card_content, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent,
    json_name: "cardContent"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file_uri, 1, type: :string, json_name: "fileUri"
  field :thumbnail_uri, 2, type: :string, json_name: "thumbnailUri"

  field :height, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.Height,
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :media, 3, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia

  field :suggestions, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :suggestion, 0

  field :reply, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedReply,
    oneof: 0

  field :action, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedReply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
  field :postback_data, 2, type: :string, json_name: "postbackData"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionDial do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionOpenUri do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionShareLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :action, 0

  field :text, 1, type: :string
  field :postback_data, 2, type: :string, json_name: "postbackData"

  field :dial, 3,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionDial,
    oneof: 0

  field :open_url, 4,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionOpenUri,
    json_name: "openUrl",
    oneof: 0

  field :share_location, 5,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionShareLocation,
    json_name: "shareLocation",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :image, 0

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :large_image, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image,
    json_name: "largeImage",
    oneof: 0

  field :icon, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image, oneof: 0
  field :content_url, 5, type: :string, json_name: "contentUrl"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :media_type, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaType,
    json_name: "mediaType",
    enum: true

  field :media_objects, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaObject,
    json_name: "mediaObjects"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :url, 1, type: :string

  field :url_type_hint, 3,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint,
    json_name: "urlTypeHint",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :open_uri_action, 1,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction,
    json_name: "openUriAction"

  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
  field :footer, 5, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem

  field :image_display_options, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.ImageDisplayOptions,
    json_name: "imageDisplayOptions",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image, 3, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image

  field :column_properties, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties,
    json_name: "columnProperties"

  field :rows, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardRow

  field :buttons, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header, 1, type: :string

  field :horizontal_alignment, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardCell

  field :divider_after, 2, type: :bool, json_name: "dividerAfter"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardCell do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :message, 0

  field :text, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Text, oneof: 0
  field :image, 2, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image, oneof: 0

  field :quick_replies, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.QuickReplies,
    json_name: "quickReplies",
    oneof: 0

  field :card, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card, oneof: 0
  field :payload, 5, type: Google.Protobuf.Struct, oneof: 0

  field :simple_responses, 7,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponses,
    json_name: "simpleResponses",
    oneof: 0

  field :basic_card, 8,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard,
    json_name: "basicCard",
    oneof: 0

  field :suggestions, 9,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestions,
    oneof: 0

  field :link_out_suggestion, 10,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.LinkOutSuggestion,
    json_name: "linkOutSuggestion",
    oneof: 0

  field :list_select, 11,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect,
    json_name: "listSelect",
    oneof: 0

  field :carousel_select, 12,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect,
    json_name: "carouselSelect",
    oneof: 0

  field :telephony_play_audio, 13,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyPlayAudio,
    json_name: "telephonyPlayAudio",
    oneof: 0

  field :telephony_synthesize_speech, 14,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonySynthesizeSpeech,
    json_name: "telephonySynthesizeSpeech",
    oneof: 0

  field :telephony_transfer_call, 15,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyTransferCall,
    json_name: "telephonyTransferCall",
    oneof: 0

  field :rbm_text, 18,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmText,
    json_name: "rbmText",
    oneof: 0

  field :rbm_standalone_rich_card, 19,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard,
    json_name: "rbmStandaloneRichCard",
    oneof: 0

  field :rbm_carousel_rich_card, 20,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard,
    json_name: "rbmCarouselRichCard",
    oneof: 0

  field :browse_carousel_card, 22,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard,
    json_name: "browseCarouselCard",
    oneof: 0

  field :table_card, 23,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCard,
    json_name: "tableCard",
    oneof: 0

  field :media_content, 24,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent,
    json_name: "mediaContent",
    oneof: 0

  field :platform, 6,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent.FollowupIntentInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :followup_intent_name, 1, type: :string, json_name: "followupIntentName"
  field :parent_followup_intent_name, 2, type: :string, json_name: "parentFollowupIntentName"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :webhook_state, 6,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.WebhookState,
    json_name: "webhookState",
    enum: true,
    deprecated: false

  field :priority, 3, type: :int32, deprecated: false
  field :is_fallback, 4, type: :bool, json_name: "isFallback", deprecated: false
  field :ml_enabled, 5, type: :bool, json_name: "mlEnabled", deprecated: true
  field :ml_disabled, 19, type: :bool, json_name: "mlDisabled", deprecated: false
  field :live_agent_handoff, 20, type: :bool, json_name: "liveAgentHandoff", deprecated: false
  field :end_interaction, 21, type: :bool, json_name: "endInteraction", deprecated: false

  field :input_context_names, 7,
    repeated: true,
    type: :string,
    json_name: "inputContextNames",
    deprecated: false

  field :events, 8, repeated: true, type: :string, deprecated: false

  field :training_phrases, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase,
    json_name: "trainingPhrases",
    deprecated: false

  field :action, 10, type: :string, deprecated: false

  field :output_contexts, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Context,
    json_name: "outputContexts",
    deprecated: false

  field :reset_contexts, 12, type: :bool, json_name: "resetContexts", deprecated: false

  field :parameters, 13,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Parameter,
    deprecated: false

  field :messages, 14, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message

  field :default_response_platforms, 15,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform,
    json_name: "defaultResponsePlatforms",
    enum: true,
    deprecated: false

  field :root_followup_intent_name, 16,
    type: :string,
    json_name: "rootFollowupIntentName",
    deprecated: false

  field :parent_followup_intent_name, 17,
    type: :string,
    json_name: "parentFollowupIntentName",
    deprecated: false

  field :followup_intent_info, 18,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.FollowupIntentInfo,
    json_name: "followupIntentInfo",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :intent, 2, type: Google.Cloud.Dialogflow.V2beta1.Intent, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :intent, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteIntentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :intent_batch, 0

  field :parent, 1, type: :string, deprecated: false
  field :intent_batch_uri, 2, type: :string, json_name: "intentBatchUri", oneof: 0

  field :intent_batch_inline, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentBatch,
    json_name: "intentBatchInline",
    oneof: 0

  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :update_mask, 5, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :intent_view, 6,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchDeleteIntentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :intents, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.IntentBatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intents.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Intents",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListIntents,
      Google.Cloud.Dialogflow.V2beta1.ListIntentsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListIntentsResponse

  rpc :GetIntent,
      Google.Cloud.Dialogflow.V2beta1.GetIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :CreateIntent,
      Google.Cloud.Dialogflow.V2beta1.CreateIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :UpdateIntent,
      Google.Cloud.Dialogflow.V2beta1.UpdateIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :DeleteIntent, Google.Cloud.Dialogflow.V2beta1.DeleteIntentRequest, Google.Protobuf.Empty

  rpc :BatchUpdateIntents,
      Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteIntents,
      Google.Cloud.Dialogflow.V2beta1.BatchDeleteIntentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intents.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Intents.Service
end
