defmodule Google.Cloud.Dialogflow.V2.IntentView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_FULL, 1
end
defmodule Google.Cloud.Dialogflow.V2.Intent.WebhookState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :WEBHOOK_STATE_UNSPECIFIED, 0
  field :WEBHOOK_STATE_ENABLED, 1
  field :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :EXAMPLE, 1
  field :TEMPLATE, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Platform do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :FACEBOOK, 1
  field :SLACK, 2
  field :TELEGRAM, 3
  field :KIK, 4
  field :SKYPE, 5
  field :LINE, 6
  field :VIBER, 7
  field :ACTIONS_ON_GOOGLE, 8
  field :GOOGLE_HANGOUTS, 11
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESPONSE_MEDIA_TYPE_UNSPECIFIED, 0
  field :AUDIO, 1
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.ImageDisplayOptions do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
  field :BLURRED_BACKGROUND, 4
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :URL_TYPE_HINT_UNSPECIFIED, 0
  field :AMP_ACTION, 1
  field :AMP_CONTENT, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Part do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType", deprecated: false
  field :alias, 3, type: :string, deprecated: false
  field :user_defined, 4, type: :bool, json_name: "userDefined", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Type,
    enum: true,
    deprecated: false

  field :parts, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Part,
    deprecated: false

  field :times_added_count, 4, type: :int32, json_name: "timesAddedCount", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Parameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :value, 3, type: :string, deprecated: false
  field :default_value, 4, type: :string, json_name: "defaultValue", deprecated: false

  field :entity_type_display_name, 5,
    type: :string,
    json_name: "entityTypeDisplayName",
    deprecated: false

  field :mandatory, 6, type: :bool, deprecated: false
  field :prompts, 7, repeated: true, type: :string, deprecated: false
  field :is_list, 8, type: :bool, json_name: "isList", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Text do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Image do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
  field :accessibility_text, 2, type: :string, json_name: "accessibilityText", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.QuickReplies do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false

  field :quick_replies, 2,
    repeated: true,
    type: :string,
    json_name: "quickReplies",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Card.Button do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :postback, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Card do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false
  field :image_uri, 3, type: :string, json_name: "imageUri", deprecated: false

  field :buttons, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Card.Button,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text_to_speech, 1, type: :string, json_name: "textToSpeech"
  field :ssml, 2, type: :string
  field :display_text, 3, type: :string, json_name: "displayText", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponses do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :simple_responses, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponse,
    json_name: "simpleResponses",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.OpenUriAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string

  field :open_uri_action, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.OpenUriAction,
    json_name: "openUriAction",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false
  field :formatted_text, 3, type: :string, json_name: "formattedText"
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false

  field :buttons, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Suggestion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Suggestions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Suggestion,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.LinkOutSuggestion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :destination_name, 1, type: :string, json_name: "destinationName", deprecated: false
  field :uri, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.Item do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :info, 1,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.Item,
    deprecated: false

  field :subtitle, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.Item do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :info, 1,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.Item,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaObject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :image, 0

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false

  field :large_image, 3,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Image,
    json_name: "largeImage",
    oneof: 0,
    deprecated: false

  field :icon, 4,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Image,
    oneof: 0,
    deprecated: false

  field :content_url, 5, type: :string, json_name: "contentUrl"
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :media_type, 1,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaType,
    json_name: "mediaType",
    enum: true,
    deprecated: false

  field :media_objects, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaObject,
    json_name: "mediaObjects"
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :url, 1, type: :string

  field :url_type_hint, 3,
    type:
      Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint,
    json_name: "urlTypeHint",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :open_uri_action, 1,
    type:
      Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction,
    json_name: "openUriAction"

  field :title, 2, type: :string
  field :description, 3, type: :string, deprecated: false
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false
  field :footer, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem

  field :image_display_options, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.ImageDisplayOptions,
    json_name: "imageDisplayOptions",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.TableCard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string, deprecated: false
  field :image, 3, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false

  field :column_properties, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties,
    json_name: "columnProperties",
    deprecated: false

  field :rows, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.TableCardRow,
    deprecated: false

  field :buttons, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :header, 1, type: :string

  field :horizontal_alignment, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.TableCardRow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.TableCardCell,
    deprecated: false

  field :divider_after, 2, type: :bool, json_name: "dividerAfter", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.TableCardCell do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :message, 0

  field :text, 1, type: Google.Cloud.Dialogflow.V2.Intent.Message.Text, oneof: 0
  field :image, 2, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, oneof: 0

  field :quick_replies, 3,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.QuickReplies,
    json_name: "quickReplies",
    oneof: 0

  field :card, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Card, oneof: 0
  field :payload, 5, type: Google.Protobuf.Struct, oneof: 0

  field :simple_responses, 7,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponses,
    json_name: "simpleResponses",
    oneof: 0

  field :basic_card, 8,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard,
    json_name: "basicCard",
    oneof: 0

  field :suggestions, 9, type: Google.Cloud.Dialogflow.V2.Intent.Message.Suggestions, oneof: 0

  field :link_out_suggestion, 10,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.LinkOutSuggestion,
    json_name: "linkOutSuggestion",
    oneof: 0

  field :list_select, 11,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect,
    json_name: "listSelect",
    oneof: 0

  field :carousel_select, 12,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect,
    json_name: "carouselSelect",
    oneof: 0

  field :browse_carousel_card, 22,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard,
    json_name: "browseCarouselCard",
    oneof: 0

  field :table_card, 23,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.TableCard,
    json_name: "tableCard",
    oneof: 0

  field :media_content, 24,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent,
    json_name: "mediaContent",
    oneof: 0

  field :platform, 6,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Platform,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.FollowupIntentInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :followup_intent_name, 1, type: :string, json_name: "followupIntentName"
  field :parent_followup_intent_name, 2, type: :string, json_name: "parentFollowupIntentName"
end
defmodule Google.Cloud.Dialogflow.V2.Intent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :webhook_state, 6,
    type: Google.Cloud.Dialogflow.V2.Intent.WebhookState,
    json_name: "webhookState",
    enum: true,
    deprecated: false

  field :priority, 3, type: :int32, deprecated: false
  field :is_fallback, 4, type: :bool, json_name: "isFallback", deprecated: false
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
    type: Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase,
    json_name: "trainingPhrases",
    deprecated: false

  field :action, 10, type: :string, deprecated: false

  field :output_contexts, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Context,
    json_name: "outputContexts",
    deprecated: false

  field :reset_contexts, 12, type: :bool, json_name: "resetContexts", deprecated: false

  field :parameters, 13,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Parameter,
    deprecated: false

  field :messages, 14,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message,
    deprecated: false

  field :default_response_platforms, 15,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Platform,
    json_name: "defaultResponsePlatforms",
    enum: true,
    deprecated: false

  field :root_followup_intent_name, 16,
    type: :string,
    json_name: "rootFollowupIntentName",
    deprecated: false

  field :parent_followup_intent_name, 17, type: :string, json_name: "parentFollowupIntentName"

  field :followup_intent_info, 18,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.FollowupIntentInfo,
    json_name: "followupIntentInfo",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListIntentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2.IntentView,
    json_name: "intentView",
    enum: true,
    deprecated: false

  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListIntentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.GetIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2.IntentView,
    json_name: "intentView",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :intent, 2, type: Google.Cloud.Dialogflow.V2.Intent, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2.IntentView,
    json_name: "intentView",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.UpdateIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :intent, 1, type: Google.Cloud.Dialogflow.V2.Intent, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2.IntentView,
    json_name: "intentView",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.DeleteIntentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateIntentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :intent_batch, 0

  field :parent, 1, type: :string, deprecated: false
  field :intent_batch_uri, 2, type: :string, json_name: "intentBatchUri", oneof: 0

  field :intent_batch_inline, 3,
    type: Google.Cloud.Dialogflow.V2.IntentBatch,
    json_name: "intentBatchInline",
    oneof: 0

  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intent_view, 6,
    type: Google.Cloud.Dialogflow.V2.IntentView,
    json_name: "intentView",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateIntentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
end
defmodule Google.Cloud.Dialogflow.V2.BatchDeleteIntentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :intents, 2, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.IntentBatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
end
defmodule Google.Cloud.Dialogflow.V2.Intents.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Intents",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListIntents,
      Google.Cloud.Dialogflow.V2.ListIntentsRequest,
      Google.Cloud.Dialogflow.V2.ListIntentsResponse

  rpc :GetIntent, Google.Cloud.Dialogflow.V2.GetIntentRequest, Google.Cloud.Dialogflow.V2.Intent

  rpc :CreateIntent,
      Google.Cloud.Dialogflow.V2.CreateIntentRequest,
      Google.Cloud.Dialogflow.V2.Intent

  rpc :UpdateIntent,
      Google.Cloud.Dialogflow.V2.UpdateIntentRequest,
      Google.Cloud.Dialogflow.V2.Intent

  rpc :DeleteIntent, Google.Cloud.Dialogflow.V2.DeleteIntentRequest, Google.Protobuf.Empty

  rpc :BatchUpdateIntents,
      Google.Cloud.Dialogflow.V2.BatchUpdateIntentsRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteIntents,
      Google.Cloud.Dialogflow.V2.BatchDeleteIntentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.Intents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Intents.Service
end
