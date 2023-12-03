# FrameBERT: Conceptual Metaphor Detection with Frame Embedding Learning

This repository contains the implementation of our EACL 2023 paper "FrameBERT: Conceptual Metaphor Detection with Frame Embedding Learning" (https://arxiv.org/abs/2302.04834). FrameBERT is a BERT-based model that leverages FrameNet embeddings for improved metaphor detection and model explainability. Our extensive experiments demonstrate the effectiveness of FrameBERT on four public benchmark datasets (VUA, MOH-X, TroFi) compared to the base model and state-of-the-art models.

## 0. To Start:

1. Clone the repository:

```
git clone https://github.com/SaiAbhinav/metaphor-detection-framebert-cs678.git
cd metaphor-detection-framebert-cs678
```

2. Install the required packages:

```
pip install -r requirements.txt
```

## 1. Run FrameBERT on Your data:

3. If you just want to **run FrameBERT directly on your own data**, just run:

```
python inference.py example_articles.json
```

Put your own data in `example_articles.json`. Check out `example_articles.json` and `inference.py`, you can easily edit them to run the program on large amount of articles.

This will produce the results to a `predictions.tsv`, which look like this:
| Tokens | Borderline\*metaphor | Real\*metaphors | Frame_label |
|----------------|---------------------|----------------|-----------------|
|Design| 0| 0| Coming_up_with|
|:| 0| 0| *|
|Crossed |1| 1| Traversing|
|lines |1 |0| Boundary|
|over |0 |0 |Locative*relation|
|the |0 |0 |*|
|toytown |0 |0 |_|
|tram| 0| 0| Vehicle|
|: |0 |0 |_|
|City| 0 |0 |Political*locales|
|transport |0 |0| Bringing|
|could |0 |0 |Possibility|
|soon |0 |0| Temporal_collocation|
|be |0| 0 |*|
|back |1 |0 |_|
|on |1 |0| Spatial_contact|
|the |0 |0 |_|
|right |0 |0 |Correctness|
|track |1 |0| Roadways|
|, |0 |0 |_|
|says |0 |0 |Statement|
|Jonathan |0| 0 |_|
|Glancey |0 |0 | \_|

The column `Borderline_metaphor` indicates a wide range of metaphor which can be very conventional, but `Real_metaphor` represents more interesting and novel metaphors. The `Frame_label` represents the identified Frame labels.

## Reproduce the paper

3. Unzip the data:

```
unzip data_all.zip
```

After unzipping, the frame data can be found at `data_all/open_sesame_v1_data`, and other data such as VUA, MOH, and TroFi datasets can be found in their respective directories.

4. Prepare the `frame_finder` model first before we run the entire framewrok. Traning the frame model will take around 2 hours.

```
./scripts/ff.sh
```

5. config data path and `frame_finder` path in `main_config.cfg`

6. Run the main script, training on `VUA18` will take about 5 hours:

```
./scripts/run.sh
```

## Configuration

You can modify the configuration of the FrameBERT model by editing the `main_config.cfg` file. This file contains various settings and hyperparameters for the model.
