defmodule Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification.HighlightedText.HighlightedTextRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_index, 1, type: :int32, json_name: "startIndex"
  field :end_index, 2, type: :int32, json_name: "endIndex"
end

defmodule Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification.HighlightedText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, type: :string

  field :highlighted_text_ranges, 2,
    repeated: true,
    type:
      Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification.HighlightedText.HighlightedTextRange,
    json_name: "highlightedTextRanges"
end

defmodule Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :highlighted_text, 1,
    type:
      Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification.HighlightedText,
    json_name: "highlightedText"

  field :review, 2, type: Google.Maps.Places.V1.Review
end

defmodule Google.Maps.Places.V1.ContextualContent.Justification.BusinessAvailabilityAttributesJustification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :takeout, 1, type: :bool
  field :delivery, 2, type: :bool
  field :dine_in, 3, type: :bool, json_name: "dineIn"
end

defmodule Google.Maps.Places.V1.ContextualContent.Justification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :justification, 0

  field :review_justification, 1,
    type: Google.Maps.Places.V1.ContextualContent.Justification.ReviewJustification,
    json_name: "reviewJustification",
    oneof: 0

  field :business_availability_attributes_justification, 2,
    type:
      Google.Maps.Places.V1.ContextualContent.Justification.BusinessAvailabilityAttributesJustification,
    json_name: "businessAvailabilityAttributesJustification",
    oneof: 0
end

defmodule Google.Maps.Places.V1.ContextualContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reviews, 1, repeated: true, type: Google.Maps.Places.V1.Review
  field :photos, 2, repeated: true, type: Google.Maps.Places.V1.Photo

  field :justifications, 3,
    repeated: true,
    type: Google.Maps.Places.V1.ContextualContent.Justification
end