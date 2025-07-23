defmodule Google.Ai.Generativelanguage.V1alpha.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_DEROGATORY, 1
  field :HARM_CATEGORY_TOXICITY, 2
  field :HARM_CATEGORY_VIOLENCE, 3
  field :HARM_CATEGORY_SEXUAL, 4
  field :HARM_CATEGORY_MEDICAL, 5
  field :HARM_CATEGORY_DANGEROUS, 6
  field :HARM_CATEGORY_HARASSMENT, 7
  field :HARM_CATEGORY_HATE_SPEECH, 8
  field :HARM_CATEGORY_SEXUALLY_EXPLICIT, 9
  field :HARM_CATEGORY_DANGEROUS_CONTENT, 10
  field :HARM_CATEGORY_CIVIC_INTEGRITY, 11
end

defmodule Google.Ai.Generativelanguage.V1alpha.ContentFilter.BlockedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BLOCKED_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1alpha.SafetyRating.HarmProbability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_PROBABILITY_UNSPECIFIED, 0
  field :NEGLIGIBLE, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
end

defmodule Google.Ai.Generativelanguage.V1alpha.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
  field :BLOCK_NONE, 4
  field :OFF, 5
end

defmodule Google.Ai.Generativelanguage.V1alpha.ContentFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1,
    type: Google.Ai.Generativelanguage.V1alpha.ContentFilter.BlockedReason,
    enum: true

  field :message, 2, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1alpha.SafetyFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rating, 1, type: Google.Ai.Generativelanguage.V1alpha.SafetyRating
  field :setting, 2, type: Google.Ai.Generativelanguage.V1alpha.SafetySetting
end

defmodule Google.Ai.Generativelanguage.V1alpha.SafetyRating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1alpha.HarmCategory,
    enum: true,
    deprecated: false

  field :probability, 4,
    type: Google.Ai.Generativelanguage.V1alpha.SafetyRating.HarmProbability,
    enum: true,
    deprecated: false

  field :blocked, 5, type: :bool
end

defmodule Google.Ai.Generativelanguage.V1alpha.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1alpha.HarmCategory,
    enum: true,
    deprecated: false

  field :threshold, 4,
    type: Google.Ai.Generativelanguage.V1alpha.SafetySetting.HarmBlockThreshold,
    enum: true,
    deprecated: false
end
