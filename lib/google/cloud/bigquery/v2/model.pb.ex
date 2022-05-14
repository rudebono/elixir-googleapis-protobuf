defmodule Google.Cloud.Bigquery.V2.Model.ModelType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :LINEAR_REGRESSION, 1
  field :LOGISTIC_REGRESSION, 2
  field :KMEANS, 3
  field :MATRIX_FACTORIZATION, 4
  field :DNN_CLASSIFIER, 5
  field :TENSORFLOW, 6
  field :DNN_REGRESSOR, 7
  field :BOOSTED_TREE_REGRESSOR, 9
  field :BOOSTED_TREE_CLASSIFIER, 10
  field :ARIMA, 11
  field :AUTOML_REGRESSOR, 12
  field :AUTOML_CLASSIFIER, 13
  field :ARIMA_PLUS, 19
end
defmodule Google.Cloud.Bigquery.V2.Model.LossType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LOSS_TYPE_UNSPECIFIED, 0
  field :MEAN_SQUARED_LOSS, 1
  field :MEAN_LOG_LOSS, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.DistanceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DISTANCE_TYPE_UNSPECIFIED, 0
  field :EUCLIDEAN, 1
  field :COSINE, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.DataSplitMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DATA_SPLIT_METHOD_UNSPECIFIED, 0
  field :RANDOM, 1
  field :CUSTOM, 2
  field :SEQUENTIAL, 3
  field :NO_SPLIT, 4
  field :AUTO_SPLIT, 5
end
defmodule Google.Cloud.Bigquery.V2.Model.DataFrequency do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DATA_FREQUENCY_UNSPECIFIED, 0
  field :AUTO_FREQUENCY, 1
  field :YEARLY, 2
  field :QUARTERLY, 3
  field :MONTHLY, 4
  field :WEEKLY, 5
  field :DAILY, 6
  field :HOURLY, 7
  field :PER_MINUTE, 8
end
defmodule Google.Cloud.Bigquery.V2.Model.HolidayRegion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :HOLIDAY_REGION_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :NA, 2
  field :JAPAC, 3
  field :EMEA, 4
  field :LAC, 5
  field :AE, 6
  field :AR, 7
  field :AT, 8
  field :AU, 9
  field :BE, 10
  field :BR, 11
  field :CA, 12
  field :CH, 13
  field :CL, 14
  field :CN, 15
  field :CO, 16
  field :CS, 17
  field :CZ, 18
  field :DE, 19
  field :DK, 20
  field :DZ, 21
  field :EC, 22
  field :EE, 23
  field :EG, 24
  field :ES, 25
  field :FI, 26
  field :FR, 27
  field :GB, 28
  field :GR, 29
  field :HK, 30
  field :HU, 31
  field :ID, 32
  field :IE, 33
  field :IL, 34
  field :IN, 35
  field :IR, 36
  field :IT, 37
  field :JP, 38
  field :KR, 39
  field :LV, 40
  field :MA, 41
  field :MX, 42
  field :MY, 43
  field :NG, 44
  field :NL, 45
  field :NO, 46
  field :NZ, 47
  field :PE, 48
  field :PH, 49
  field :PK, 50
  field :PL, 51
  field :PT, 52
  field :RO, 53
  field :RS, 54
  field :RU, 55
  field :SA, 56
  field :SE, 57
  field :SG, 58
  field :SI, 59
  field :SK, 60
  field :TH, 61
  field :TR, 62
  field :TW, 63
  field :UA, 64
  field :US, 65
  field :VE, 66
  field :VN, 67
  field :ZA, 68
end
defmodule Google.Cloud.Bigquery.V2.Model.LearnRateStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LEARN_RATE_STRATEGY_UNSPECIFIED, 0
  field :LINE_SEARCH, 1
  field :CONSTANT, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.OptimizationStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPTIMIZATION_STRATEGY_UNSPECIFIED, 0
  field :BATCH_GRADIENT_DESCENT, 1
  field :NORMAL_EQUATION, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.FeedbackType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :FEEDBACK_TYPE_UNSPECIFIED, 0
  field :IMPLICIT, 1
  field :EXPLICIT, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SEASONAL_PERIOD_TYPE_UNSPECIFIED, 0
  field :NO_SEASONALITY, 1
  field :DAILY, 2
  field :WEEKLY, 3
  field :MONTHLY, 4
  field :QUARTERLY, 5
  field :YEARLY, 6
end
defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED, 0
  field :RANDOM, 1
  field :CUSTOM, 2
  field :KMEANS_PLUS_PLUS, 3
end
defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Bigquery.V2.Model.RegressionMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :mean_absolute_error, 1, type: Google.Protobuf.DoubleValue, json_name: "meanAbsoluteError"
  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue, json_name: "meanSquaredError"

  field :mean_squared_log_error, 3,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanSquaredLogError"

  field :median_absolute_error, 4,
    type: Google.Protobuf.DoubleValue,
    json_name: "medianAbsoluteError"

  field :r_squared, 5, type: Google.Protobuf.DoubleValue, json_name: "rSquared"
end
defmodule Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :precision, 1, type: Google.Protobuf.DoubleValue
  field :recall, 2, type: Google.Protobuf.DoubleValue
  field :accuracy, 3, type: Google.Protobuf.DoubleValue
  field :threshold, 4, type: Google.Protobuf.DoubleValue
  field :f1_score, 5, type: Google.Protobuf.DoubleValue, json_name: "f1Score"
  field :log_loss, 6, type: Google.Protobuf.DoubleValue, json_name: "logLoss"
  field :roc_auc, 7, type: Google.Protobuf.DoubleValue, json_name: "rocAuc"
end
defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :positive_class_threshold, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "positiveClassThreshold"

  field :true_positives, 2, type: Google.Protobuf.Int64Value, json_name: "truePositives"
  field :false_positives, 3, type: Google.Protobuf.Int64Value, json_name: "falsePositives"
  field :true_negatives, 4, type: Google.Protobuf.Int64Value, json_name: "trueNegatives"
  field :false_negatives, 5, type: Google.Protobuf.Int64Value, json_name: "falseNegatives"
  field :precision, 6, type: Google.Protobuf.DoubleValue
  field :recall, 7, type: Google.Protobuf.DoubleValue
  field :f1_score, 8, type: Google.Protobuf.DoubleValue, json_name: "f1Score"
  field :accuracy, 9, type: Google.Protobuf.DoubleValue
end
defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics,
    json_name: "aggregateClassificationMetrics"

  field :binary_confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix,
    json_name: "binaryConfusionMatrixList"

  field :positive_label, 3, type: :string, json_name: "positiveLabel"
  field :negative_label, 4, type: :string, json_name: "negativeLabel"
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :predicted_label, 1, type: :string, json_name: "predictedLabel"
  field :item_count, 2, type: Google.Protobuf.Int64Value, json_name: "itemCount"
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :actual_label, 1, type: :string, json_name: "actualLabel"

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :confidence_threshold, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "confidenceThreshold"

  field :rows, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics,
    json_name: "aggregateClassificationMetrics"

  field :confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix,
    json_name: "confusionMatrixList"
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :category, 1, type: :string
  field :count, 2, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :category_counts, 1,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount,
    json_name: "categoryCounts"
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :value, 0

  field :feature_column, 1, type: :string, json_name: "featureColumn"

  field :numerical_value, 2,
    type: Google.Protobuf.DoubleValue,
    json_name: "numericalValue",
    oneof: 0

  field :categorical_value, 3,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue,
    json_name: "categoricalValue",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :centroid_id, 1, type: :int64, json_name: "centroidId"

  field :feature_values, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue,
    json_name: "featureValues"

  field :count, 3, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :davies_bouldin_index, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "daviesBouldinIndex"

  field :mean_squared_distance, 2,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanSquaredDistance"

  field :clusters, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster
end
defmodule Google.Cloud.Bigquery.V2.Model.RankingMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :mean_average_precision, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanAveragePrecision"

  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue, json_name: "meanSquaredError"

  field :normalized_discounted_cumulative_gain, 3,
    type: Google.Protobuf.DoubleValue,
    json_name: "normalizedDiscountedCumulativeGain"

  field :average_rank, 4, type: Google.Protobuf.DoubleValue, json_name: "averageRank"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :non_seasonal_order, 1,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :arima_fitting_metrics, 2,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics"

  field :has_drift, 3, type: :bool, json_name: "hasDrift"
  field :time_series_id, 4, type: :string, json_name: "timeSeriesId"
  field :time_series_ids, 9, repeated: true, type: :string, json_name: "timeSeriesIds"

  field :seasonal_periods, 5,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true

  field :has_holiday_effect, 6, type: Google.Protobuf.BoolValue, json_name: "hasHolidayEffect"
  field :has_spikes_and_dips, 7, type: Google.Protobuf.BoolValue, json_name: "hasSpikesAndDips"
  field :has_step_changes, 8, type: Google.Protobuf.BoolValue, json_name: "hasStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :non_seasonal_order, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder",
    deprecated: true

  field :arima_fitting_metrics, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics",
    deprecated: true

  field :seasonal_periods, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true,
    deprecated: true

  field :has_drift, 4, repeated: true, type: :bool, json_name: "hasDrift", deprecated: true

  field :time_series_id, 5,
    repeated: true,
    type: :string,
    json_name: "timeSeriesId",
    deprecated: true

  field :arima_single_model_forecasting_metrics, 6,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics,
    json_name: "arimaSingleModelForecastingMetrics"
end
defmodule Google.Cloud.Bigquery.V2.Model.EvaluationMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :metrics, 0

  field :regression_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.RegressionMetrics,
    json_name: "regressionMetrics",
    oneof: 0

  field :binary_classification_metrics, 2,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics,
    json_name: "binaryClassificationMetrics",
    oneof: 0

  field :multi_class_classification_metrics, 3,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics,
    json_name: "multiClassClassificationMetrics",
    oneof: 0

  field :clustering_metrics, 4,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics,
    json_name: "clusteringMetrics",
    oneof: 0

  field :ranking_metrics, 5,
    type: Google.Cloud.Bigquery.V2.Model.RankingMetrics,
    json_name: "rankingMetrics",
    oneof: 0

  field :arima_forecasting_metrics, 6,
    type: Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics,
    json_name: "arimaForecastingMetrics",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.V2.Model.DataSplitResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :training_table, 1,
    type: Google.Cloud.Bigquery.V2.TableReference,
    json_name: "trainingTable"

  field :evaluation_table, 2,
    type: Google.Cloud.Bigquery.V2.TableReference,
    json_name: "evaluationTable"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaOrder do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :p, 1, type: :int64
  field :d, 2, type: :int64
  field :q, 3, type: :int64
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :log_likelihood, 1, type: :double, json_name: "logLikelihood"
  field :aic, 2, type: :double
  field :variance, 3, type: :double
end
defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :feature_name, 1, type: :string, json_name: "featureName"
  field :attribution, 2, type: Google.Protobuf.DoubleValue
end
defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :explanations, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation

  field :class_label, 2, type: :string, json_name: "classLabel"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :max_iterations, 1, type: :int64, json_name: "maxIterations"

  field :loss_type, 2,
    type: Google.Cloud.Bigquery.V2.Model.LossType,
    json_name: "lossType",
    enum: true

  field :learn_rate, 3, type: :double, json_name: "learnRate"
  field :l1_regularization, 4, type: Google.Protobuf.DoubleValue, json_name: "l1Regularization"
  field :l2_regularization, 5, type: Google.Protobuf.DoubleValue, json_name: "l2Regularization"

  field :min_relative_progress, 6,
    type: Google.Protobuf.DoubleValue,
    json_name: "minRelativeProgress"

  field :warm_start, 7, type: Google.Protobuf.BoolValue, json_name: "warmStart"
  field :early_stop, 8, type: Google.Protobuf.BoolValue, json_name: "earlyStop"
  field :input_label_columns, 9, repeated: true, type: :string, json_name: "inputLabelColumns"

  field :data_split_method, 10,
    type: Google.Cloud.Bigquery.V2.Model.DataSplitMethod,
    json_name: "dataSplitMethod",
    enum: true

  field :data_split_eval_fraction, 11, type: :double, json_name: "dataSplitEvalFraction"
  field :data_split_column, 12, type: :string, json_name: "dataSplitColumn"

  field :learn_rate_strategy, 13,
    type: Google.Cloud.Bigquery.V2.Model.LearnRateStrategy,
    json_name: "learnRateStrategy",
    enum: true

  field :initial_learn_rate, 16, type: :double, json_name: "initialLearnRate"

  field :label_class_weights, 17,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry,
    json_name: "labelClassWeights",
    map: true

  field :user_column, 18, type: :string, json_name: "userColumn"
  field :item_column, 19, type: :string, json_name: "itemColumn"

  field :distance_type, 20,
    type: Google.Cloud.Bigquery.V2.Model.DistanceType,
    json_name: "distanceType",
    enum: true

  field :num_clusters, 21, type: :int64, json_name: "numClusters"
  field :model_uri, 22, type: :string, json_name: "modelUri"

  field :optimization_strategy, 23,
    type: Google.Cloud.Bigquery.V2.Model.OptimizationStrategy,
    json_name: "optimizationStrategy",
    enum: true

  field :hidden_units, 24, repeated: true, type: :int64, json_name: "hiddenUnits"
  field :batch_size, 25, type: :int64, json_name: "batchSize"
  field :dropout, 26, type: Google.Protobuf.DoubleValue
  field :max_tree_depth, 27, type: :int64, json_name: "maxTreeDepth"
  field :subsample, 28, type: :double
  field :min_split_loss, 29, type: Google.Protobuf.DoubleValue, json_name: "minSplitLoss"
  field :num_factors, 30, type: :int64, json_name: "numFactors"

  field :feedback_type, 31,
    type: Google.Cloud.Bigquery.V2.Model.FeedbackType,
    json_name: "feedbackType",
    enum: true

  field :wals_alpha, 32, type: Google.Protobuf.DoubleValue, json_name: "walsAlpha"

  field :kmeans_initialization_method, 33,
    type: Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod,
    json_name: "kmeansInitializationMethod",
    enum: true

  field :kmeans_initialization_column, 34, type: :string, json_name: "kmeansInitializationColumn"
  field :time_series_timestamp_column, 35, type: :string, json_name: "timeSeriesTimestampColumn"
  field :time_series_data_column, 36, type: :string, json_name: "timeSeriesDataColumn"
  field :auto_arima, 37, type: :bool, json_name: "autoArima"

  field :non_seasonal_order, 38,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :data_frequency, 39,
    type: Google.Cloud.Bigquery.V2.Model.DataFrequency,
    json_name: "dataFrequency",
    enum: true

  field :include_drift, 41, type: :bool, json_name: "includeDrift"

  field :holiday_region, 42,
    type: Google.Cloud.Bigquery.V2.Model.HolidayRegion,
    json_name: "holidayRegion",
    enum: true

  field :time_series_id_column, 43, type: :string, json_name: "timeSeriesIdColumn"

  field :time_series_id_columns, 51,
    repeated: true,
    type: :string,
    json_name: "timeSeriesIdColumns"

  field :horizon, 44, type: :int64
  field :preserve_input_structs, 45, type: :bool, json_name: "preserveInputStructs"
  field :auto_arima_max_order, 46, type: :int64, json_name: "autoArimaMaxOrder"

  field :decompose_time_series, 50,
    type: Google.Protobuf.BoolValue,
    json_name: "decomposeTimeSeries"

  field :clean_spikes_and_dips, 52,
    type: Google.Protobuf.BoolValue,
    json_name: "cleanSpikesAndDips"

  field :adjust_step_changes, 53, type: Google.Protobuf.BoolValue, json_name: "adjustStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :centroid_id, 1, type: :int64, json_name: "centroidId"
  field :cluster_radius, 2, type: Google.Protobuf.DoubleValue, json_name: "clusterRadius"
  field :cluster_size, 3, type: Google.Protobuf.Int64Value, json_name: "clusterSize"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :auto_regressive_coefficients, 1,
    repeated: true,
    type: :double,
    json_name: "autoRegressiveCoefficients"

  field :moving_average_coefficients, 2,
    repeated: true,
    type: :double,
    json_name: "movingAverageCoefficients"

  field :intercept_coefficient, 3, type: :double, json_name: "interceptCoefficient"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :non_seasonal_order, 1,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :arima_coefficients, 2,
    type:
      Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients,
    json_name: "arimaCoefficients"

  field :arima_fitting_metrics, 3,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics"

  field :has_drift, 4, type: :bool, json_name: "hasDrift"
  field :time_series_id, 5, type: :string, json_name: "timeSeriesId"
  field :time_series_ids, 10, repeated: true, type: :string, json_name: "timeSeriesIds"

  field :seasonal_periods, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true

  field :has_holiday_effect, 7, type: Google.Protobuf.BoolValue, json_name: "hasHolidayEffect"
  field :has_spikes_and_dips, 8, type: Google.Protobuf.BoolValue, json_name: "hasSpikesAndDips"
  field :has_step_changes, 9, type: Google.Protobuf.BoolValue, json_name: "hasStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :arima_model_info, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo,
    json_name: "arimaModelInfo"

  field :seasonal_periods, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: Google.Protobuf.Int32Value
  field :duration_ms, 4, type: Google.Protobuf.Int64Value, json_name: "durationMs"
  field :training_loss, 5, type: Google.Protobuf.DoubleValue, json_name: "trainingLoss"
  field :eval_loss, 6, type: Google.Protobuf.DoubleValue, json_name: "evalLoss"
  field :learn_rate, 7, type: :double, json_name: "learnRate"

  field :cluster_infos, 8,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo,
    json_name: "clusterInfos"

  field :arima_result, 9,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult,
    json_name: "arimaResult"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :training_options, 1,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions,
    json_name: "trainingOptions"

  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :results, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult

  field :evaluation_metrics, 7,
    type: Google.Cloud.Bigquery.V2.Model.EvaluationMetrics,
    json_name: "evaluationMetrics"

  field :data_split_result, 9,
    type: Google.Cloud.Bigquery.V2.Model.DataSplitResult,
    json_name: "dataSplitResult"

  field :global_explanations, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation,
    json_name: "globalExplanations"
end
defmodule Google.Cloud.Bigquery.V2.Model.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Bigquery.V2.Model do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :etag, 1, type: :string, deprecated: false

  field :model_reference, 2,
    type: Google.Cloud.Bigquery.V2.ModelReference,
    json_name: "modelReference",
    deprecated: false

  field :creation_time, 5, type: :int64, json_name: "creationTime", deprecated: false
  field :last_modified_time, 6, type: :int64, json_name: "lastModifiedTime", deprecated: false
  field :description, 12, type: :string, deprecated: false
  field :friendly_name, 14, type: :string, json_name: "friendlyName", deprecated: false
  field :labels, 15, repeated: true, type: Google.Cloud.Bigquery.V2.Model.LabelsEntry, map: true
  field :expiration_time, 16, type: :int64, json_name: "expirationTime", deprecated: false
  field :location, 13, type: :string, deprecated: false

  field :encryption_configuration, 17,
    type: Google.Cloud.Bigquery.V2.EncryptionConfiguration,
    json_name: "encryptionConfiguration"

  field :model_type, 7,
    type: Google.Cloud.Bigquery.V2.Model.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false

  field :training_runs, 9,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun,
    json_name: "trainingRuns",
    deprecated: false

  field :feature_columns, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.StandardSqlField,
    json_name: "featureColumns",
    deprecated: false

  field :label_columns, 11,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.StandardSqlField,
    json_name: "labelColumns",
    deprecated: false

  field :best_trial_id, 19, type: :int64, json_name: "bestTrialId", deprecated: true
end
defmodule Google.Cloud.Bigquery.V2.GetModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.PatchModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
  field :model, 4, type: Google.Cloud.Bigquery.V2.Model, deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.DeleteModelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.ListModelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :max_results, 3, type: Google.Protobuf.UInt32Value, json_name: "maxResults"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Bigquery.V2.ListModelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Cloud.Bigquery.V2.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.V2.ModelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.bigquery.v2.ModelService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetModel, Google.Cloud.Bigquery.V2.GetModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :ListModels,
      Google.Cloud.Bigquery.V2.ListModelsRequest,
      Google.Cloud.Bigquery.V2.ListModelsResponse

  rpc :PatchModel, Google.Cloud.Bigquery.V2.PatchModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :DeleteModel, Google.Cloud.Bigquery.V2.DeleteModelRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Bigquery.V2.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.ModelService.Service
end
