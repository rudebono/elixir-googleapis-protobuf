defmodule Google.Cloud.Dialogflow.V2.IntentView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INTENT_VIEW_UNSPECIFIED | :INTENT_VIEW_FULL

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_FULL, 1
end
defmodule Google.Cloud.Dialogflow.V2.Intent.WebhookState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :WEBHOOK_STATE_UNSPECIFIED
          | :WEBHOOK_STATE_ENABLED
          | :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING

  field :WEBHOOK_STATE_UNSPECIFIED, 0
  field :WEBHOOK_STATE_ENABLED, 1
  field :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :EXAMPLE | :TEMPLATE

  field :TYPE_UNSPECIFIED, 0
  field :EXAMPLE, 1
  field :TEMPLATE, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PLATFORM_UNSPECIFIED
          | :FACEBOOK
          | :SLACK
          | :TELEGRAM
          | :KIK
          | :SKYPE
          | :LINE
          | :VIBER
          | :ACTIONS_ON_GOOGLE
          | :GOOGLE_HANGOUTS

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESPONSE_MEDIA_TYPE_UNSPECIFIED | :AUDIO

  field :RESPONSE_MEDIA_TYPE_UNSPECIFIED, 0
  field :AUDIO, 1
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.ImageDisplayOptions do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED
          | :GRAY
          | :WHITE
          | :CROPPED
          | :BLURRED_BACKGROUND

  field :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
  field :BLURRED_BACKGROUND, 4
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :URL_TYPE_HINT_UNSPECIFIED | :AMP_ACTION | :AMP_CONTENT

  field :URL_TYPE_HINT_UNSPECIFIED, 0
  field :AMP_ACTION, 1
  field :AMP_CONTENT, 2
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HORIZONTAL_ALIGNMENT_UNSPECIFIED | :LEADING | :CENTER | :TRAILING

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Part do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          entity_type: String.t(),
          alias: String.t(),
          user_defined: boolean
        }

  defstruct text: "",
            entity_type: "",
            alias: "",
            user_defined: false

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType", deprecated: false
  field :alias, 3, type: :string, deprecated: false
  field :user_defined, 4, type: :bool, json_name: "userDefined", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Type.t(),
          parts: [Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.Part.t()],
          times_added_count: integer
        }

  defstruct name: "",
            type: :TYPE_UNSPECIFIED,
            parts: [],
            times_added_count: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          value: String.t(),
          default_value: String.t(),
          entity_type_display_name: String.t(),
          mandatory: boolean,
          prompts: [String.t()],
          is_list: boolean
        }

  defstruct name: "",
            display_name: "",
            value: "",
            default_value: "",
            entity_type_display_name: "",
            mandatory: false,
            prompts: [],
            is_list: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()]
        }

  defstruct text: []

  field :text, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t(),
          accessibility_text: String.t()
        }

  defstruct image_uri: "",
            accessibility_text: ""

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
  field :accessibility_text, 2, type: :string, json_name: "accessibilityText", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.QuickReplies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          quick_replies: [String.t()]
        }

  defstruct title: "",
            quick_replies: []

  field :title, 1, type: :string, deprecated: false

  field :quick_replies, 2,
    repeated: true,
    type: :string,
    json_name: "quickReplies",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Card.Button do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          postback: String.t()
        }

  defstruct text: "",
            postback: ""

  field :text, 1, type: :string, deprecated: false
  field :postback, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Card do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image_uri: String.t(),
          buttons: [Google.Cloud.Dialogflow.V2.Intent.Message.Card.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            image_uri: "",
            buttons: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_to_speech: String.t(),
          ssml: String.t(),
          display_text: String.t()
        }

  defstruct text_to_speech: "",
            ssml: "",
            display_text: ""

  field :text_to_speech, 1, type: :string, json_name: "textToSpeech"
  field :ssml, 2, type: :string
  field :display_text, 3, type: :string, json_name: "displayText", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponses do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          simple_responses: [Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponse.t()]
        }

  defstruct simple_responses: []

  field :simple_responses, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponse,
    json_name: "simpleResponses",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.OpenUriAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          open_uri_action:
            Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.OpenUriAction.t() | nil
        }

  defstruct title: "",
            open_uri_action: nil

  field :title, 1, type: :string

  field :open_uri_action, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.OpenUriAction,
    json_name: "openUriAction",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          formatted_text: String.t(),
          image: Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil,
          buttons: [Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            formatted_text: "",
            image: nil,
            buttons: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t()
        }

  defstruct title: ""

  field :title, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.Suggestions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestions: [Google.Cloud.Dialogflow.V2.Intent.Message.Suggestion.t()]
        }

  defstruct suggestions: []

  field :suggestions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.Suggestion,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.LinkOutSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_name: String.t(),
          uri: String.t()
        }

  defstruct destination_name: "",
            uri: ""

  field :destination_name, 1, type: :string, json_name: "destinationName", deprecated: false
  field :uri, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo.t() | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil
        }

  defstruct info: nil,
            title: "",
            description: "",
            image: nil

  field :info, 1,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          items: [Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.Item.t()],
          subtitle: String.t()
        }

  defstruct title: "",
            items: [],
            subtitle: ""

  field :title, 1, type: :string, deprecated: false

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.Item,
    deprecated: false

  field :subtitle, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo.t() | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil
        }

  defstruct info: nil,
            title: "",
            description: "",
            image: nil

  field :info, 1,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :image, 4, type: Google.Cloud.Dialogflow.V2.Intent.Message.Image, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.Item.t()]
        }

  defstruct items: []

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.Item,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.SelectItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          synonyms: [String.t()]
        }

  defstruct key: "",
            synonyms: []

  field :key, 1, type: :string, deprecated: false
  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image:
            {:large_image, Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil}
            | {:icon, Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil},
          name: String.t(),
          description: String.t(),
          content_url: String.t()
        }

  defstruct image: nil,
            name: "",
            description: "",
            content_url: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_type:
            Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaType.t(),
          media_objects: [
            Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.ResponseMediaObject.t()
          ]
        }

  defstruct media_type: :RESPONSE_MEDIA_TYPE_UNSPECIFIED,
            media_objects: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          url_type_hint:
            Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint.t()
        }

  defstruct url: "",
            url_type_hint: :URL_TYPE_HINT_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          open_uri_action:
            Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.t()
            | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil,
          footer: String.t()
        }

  defstruct open_uri_action: nil,
            title: "",
            description: "",
            image: nil,
            footer: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [
            Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.t()
          ],
          image_display_options:
            Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.ImageDisplayOptions.t()
        }

  defstruct items: [],
            image_display_options: :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image: Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil,
          column_properties: [Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.t()],
          rows: [Google.Cloud.Dialogflow.V2.Intent.Message.TableCardRow.t()],
          buttons: [Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            image: nil,
            column_properties: [],
            rows: [],
            buttons: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          horizontal_alignment:
            Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.HorizontalAlignment.t()
        }

  defstruct header: "",
            horizontal_alignment: :HORIZONTAL_ALIGNMENT_UNSPECIFIED

  field :header, 1, type: :string

  field :horizontal_alignment, 2,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.ColumnProperties.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.TableCardRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Cloud.Dialogflow.V2.Intent.Message.TableCardCell.t()],
          divider_after: boolean
        }

  defstruct cells: [],
            divider_after: false

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message.TableCardCell,
    deprecated: false

  field :divider_after, 2, type: :bool, json_name: "dividerAfter", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message.TableCardCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.Intent.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message:
            {:text, Google.Cloud.Dialogflow.V2.Intent.Message.Text.t() | nil}
            | {:image, Google.Cloud.Dialogflow.V2.Intent.Message.Image.t() | nil}
            | {:quick_replies, Google.Cloud.Dialogflow.V2.Intent.Message.QuickReplies.t() | nil}
            | {:card, Google.Cloud.Dialogflow.V2.Intent.Message.Card.t() | nil}
            | {:payload, Google.Protobuf.Struct.t() | nil}
            | {:simple_responses,
               Google.Cloud.Dialogflow.V2.Intent.Message.SimpleResponses.t() | nil}
            | {:basic_card, Google.Cloud.Dialogflow.V2.Intent.Message.BasicCard.t() | nil}
            | {:suggestions, Google.Cloud.Dialogflow.V2.Intent.Message.Suggestions.t() | nil}
            | {:link_out_suggestion,
               Google.Cloud.Dialogflow.V2.Intent.Message.LinkOutSuggestion.t() | nil}
            | {:list_select, Google.Cloud.Dialogflow.V2.Intent.Message.ListSelect.t() | nil}
            | {:carousel_select,
               Google.Cloud.Dialogflow.V2.Intent.Message.CarouselSelect.t() | nil}
            | {:browse_carousel_card,
               Google.Cloud.Dialogflow.V2.Intent.Message.BrowseCarouselCard.t() | nil}
            | {:table_card, Google.Cloud.Dialogflow.V2.Intent.Message.TableCard.t() | nil}
            | {:media_content, Google.Cloud.Dialogflow.V2.Intent.Message.MediaContent.t() | nil},
          platform: Google.Cloud.Dialogflow.V2.Intent.Message.Platform.t()
        }

  defstruct message: nil,
            platform: :PLATFORM_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          followup_intent_name: String.t(),
          parent_followup_intent_name: String.t()
        }

  defstruct followup_intent_name: "",
            parent_followup_intent_name: ""

  field :followup_intent_name, 1, type: :string, json_name: "followupIntentName"
  field :parent_followup_intent_name, 2, type: :string, json_name: "parentFollowupIntentName"
end
defmodule Google.Cloud.Dialogflow.V2.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          webhook_state: Google.Cloud.Dialogflow.V2.Intent.WebhookState.t(),
          priority: integer,
          is_fallback: boolean,
          ml_disabled: boolean,
          live_agent_handoff: boolean,
          end_interaction: boolean,
          input_context_names: [String.t()],
          events: [String.t()],
          training_phrases: [Google.Cloud.Dialogflow.V2.Intent.TrainingPhrase.t()],
          action: String.t(),
          output_contexts: [Google.Cloud.Dialogflow.V2.Context.t()],
          reset_contexts: boolean,
          parameters: [Google.Cloud.Dialogflow.V2.Intent.Parameter.t()],
          messages: [Google.Cloud.Dialogflow.V2.Intent.Message.t()],
          default_response_platforms: [Google.Cloud.Dialogflow.V2.Intent.Message.Platform.t()],
          root_followup_intent_name: String.t(),
          parent_followup_intent_name: String.t(),
          followup_intent_info: [Google.Cloud.Dialogflow.V2.Intent.FollowupIntentInfo.t()]
        }

  defstruct name: "",
            display_name: "",
            webhook_state: :WEBHOOK_STATE_UNSPECIFIED,
            priority: 0,
            is_fallback: false,
            ml_disabled: false,
            live_agent_handoff: false,
            end_interaction: false,
            input_context_names: [],
            events: [],
            training_phrases: [],
            action: "",
            output_contexts: [],
            reset_contexts: false,
            parameters: [],
            messages: [],
            default_response_platforms: [],
            root_followup_intent_name: "",
            parent_followup_intent_name: "",
            followup_intent_info: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2.IntentView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED,
            page_size: 0,
            page_token: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2.Intent.t()],
          next_page_token: String.t()
        }

  defstruct intents: [],
            next_page_token: ""

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.GetIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2.IntentView.t()
        }

  defstruct name: "",
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          intent: Google.Cloud.Dialogflow.V2.Intent.t() | nil,
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2.IntentView.t()
        }

  defstruct parent: "",
            intent: nil,
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: Google.Cloud.Dialogflow.V2.Intent.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          intent_view: Google.Cloud.Dialogflow.V2.IntentView.t()
        }

  defstruct intent: nil,
            language_code: "",
            update_mask: nil,
            intent_view: :INTENT_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent_batch:
            {:intent_batch_uri, String.t()}
            | {:intent_batch_inline, Google.Cloud.Dialogflow.V2.IntentBatch.t() | nil},
          parent: String.t(),
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          intent_view: Google.Cloud.Dialogflow.V2.IntentView.t()
        }

  defstruct intent_batch: nil,
            parent: "",
            language_code: "",
            update_mask: nil,
            intent_view: :INTENT_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2.Intent.t()]
        }

  defstruct intents: []

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
end
defmodule Google.Cloud.Dialogflow.V2.BatchDeleteIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          intents: [Google.Cloud.Dialogflow.V2.Intent.t()]
        }

  defstruct parent: "",
            intents: []

  field :parent, 1, type: :string, deprecated: false
  field :intents, 2, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.IntentBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2.Intent.t()]
        }

  defstruct intents: []

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Intent
end
defmodule Google.Cloud.Dialogflow.V2.Intents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Intents"

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
