defmodule Google.Ai.Generativelanguage.V1beta2.HarmCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_CATEGORY_UNSPECIFIED, 0
  field :HARM_CATEGORY_DEROGATORY, 1
  field :HARM_CATEGORY_TOXICITY, 2
  field :HARM_CATEGORY_VIOLENCE, 3
  field :HARM_CATEGORY_SEXUAL, 4
  field :HARM_CATEGORY_MEDICAL, 5
  field :HARM_CATEGORY_DANGEROUS, 6
end

defmodule Google.Ai.Generativelanguage.V1beta2.ContentFilter.BlockedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BLOCKED_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
end

defmodule Google.Ai.Generativelanguage.V1beta2.SafetyRating.HarmProbability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_PROBABILITY_UNSPECIFIED, 0
  field :NEGLIGIBLE, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
end

defmodule Google.Ai.Generativelanguage.V1beta2.SafetySetting.HarmBlockThreshold do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HARM_BLOCK_THRESHOLD_UNSPECIFIED, 0
  field :BLOCK_LOW_AND_ABOVE, 1
  field :BLOCK_MEDIUM_AND_ABOVE, 2
  field :BLOCK_ONLY_HIGH, 3
end

defmodule Google.Ai.Generativelanguage.V1beta2.ContentFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1,
    type: Google.Ai.Generativelanguage.V1beta2.ContentFilter.BlockedReason,
    enum: true

  field :message, 2, proto3_optional: true, type: :string
end

defmodule Google.Ai.Generativelanguage.V1beta2.SafetyFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rating, 1, type: Google.Ai.Generativelanguage.V1beta2.SafetyRating
  field :setting, 2, type: Google.Ai.Generativelanguage.V1beta2.SafetySetting
end

defmodule Google.Ai.Generativelanguage.V1beta2.SafetyRating do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1beta2.HarmCategory,
    enum: true,
    deprecated: false

  field :probability, 4,
    type: Google.Ai.Generativelanguage.V1beta2.SafetyRating.HarmProbability,
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta2.SafetySetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 3,
    type: Google.Ai.Generativelanguage.V1beta2.HarmCategory,
    enum: true,
    deprecated: false

  field :threshold, 4,
    type: Google.Ai.Generativelanguage.V1beta2.SafetySetting.HarmBlockThreshold,
    enum: true,
    deprecated: false
end
