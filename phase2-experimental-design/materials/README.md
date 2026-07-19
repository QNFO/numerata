# NUMERATA Phase 2 — Experimental Materials

## Materials Inventory

### Experiment 1: Metaphor-Consistent Notation Design

| Material | File | Format | Status |
|----------|------|--------|--------|
| **Glyph sets** (3 systems × 10 digits) | `materials/exp1/glyphs/` | SVG + PNG (200×200px) | Template ready |
| **Training tutorial** (interactive) | `materials/exp1/tutorial/` | HTML/CSS/JS (Gorilla.sc) | Template ready |
| **Object-collection task stimuli** | `materials/exp1/stimuli/collection/` | Generated CSV | Script below |
| **Spatial-sequential task stimuli** | `materials/exp1/stimuli/spatial/` | Generated CSV | Script below |
| **Transfer word problems** | `materials/exp1/stimuli/transfer/` | 10 problems × 3 sets | Template ready |
| **Attention check trials** | `materials/exp1/catch_trials/` | 3 trials | Template ready |
| **Baseline assessment** (BNT + AMAS + digit-span) | `materials/exp1/baseline/` | Gorilla.sc task | Standard instruments |

### Experiment 2: Multi-Axis Validation

| Material | File | Format | Status |
|----------|------|--------|--------|
| **Numeral system reference sheets** (8 systems) | `materials/exp2/reference_sheets/` | A4 PDF | Template ready |
| **Scoring rubric** (8 dimensions, anchored 1-7) | `materials/exp2/rubric/` | PDF + Qualtrics form | Template ready |
| **Training video** (5 min, Greek alphabetic numerals) | `materials/exp2/training/` | MP4 | Needs recording |
| **Speed task** (160 trials, randomized) | `materials/exp2/speed_task/` | Gorilla.sc task | Template ready |
| **Exit interview form** | `materials/exp2/exit_interview/` | Qualtrics form | Template ready |

### Experiment 3: Dual Zero-Glyph Pilot

| Material | File | Format | Status |
|----------|------|--------|--------|
| **Glyph cards** (O, OE, standard 0) | `materials/exp3/glyph_cards/` | A5 PDF (printable) | Template ready |
| **Workbook** (16 pages, per condition) | `materials/exp3/workbooks/` | A4 PDF | Template ready |
| **Story scripts** (2 stories, per condition) | `materials/exp3/stories/` | Text | Template ready |
| **Tablet games** (3 games, per condition) | `materials/exp3/games/` | HTML/CSS/JS | Template ready |
| **ZCA assessment** (20 items) | `materials/exp3/zca/` | Gorilla.sc task | Template ready |
| **Base-10 manipulatives** | `materials/exp3/manipulatives/` | Physical (printable) | Template ready |

---

## Stimulus Generation Script

The following Python script generates randomized stimulus lists for Experiment 1 trial sequences with counterbalanced block orders and system-specific glyph mapping.

```python
#!/usr/bin/env python3
# stimulus_generator.py — Generate stimulus lists for Experiment 1
# Usage: python3 stimulus_generator.py --experiment 1 --n_participants 324

import csv
import random
import argparse
from itertools import product

random.seed(20260719)

# ---- Glyph-to-Value Mappings ----
COLLECTION_GLYPHS = {0: 'O', 1: 'C', 2: 'B', 3: 'D', 4: 'E', 
                      5: 'F', 6: 'G', 7: 'H', 8: 'I', 9: 'J'}
MOTION_GLYPHS = {0: 'A', 1: 'a', 2: 'b', 3: 'c', 4: 'd',
                  5: 'e', 6: 'f', 7: 'g', 8: 'h', 9: 'i'}
CONTROL_GLYPHS = {0: 'X', 1: 'Y', 2: 'Z', 3: 'W', 4: 'V',
                   5: 'U', 6: 'T', 7: 'S', 8: 'R', 9: 'Q'}

# ---- Trial Generation ----

def generate_collection_trials(n_trials=15):
    """Generate object-collection task trials"""
    trials = []
    for i in range(n_trials):
        # Addition by grouping (5 trials)
        if i < 5:
            a = random.randint(1, 99)
            b = random.randint(1, 99)
            trials.append({
                'trial_id': i + 1,
                'task': 'addition_grouping',
                'operand_a': a,
                'operand_b': b,
                'correct_answer': a + b,
                'display': f'combine_{a}_and_{b}'
            })
        # Set comparison (5 trials)
        elif i < 10:
            a = random.randint(10, 99)
            b = random.randint(10, 99)
            trials.append({
                'trial_id': i + 1,
                'task': 'set_comparison',
                'operand_a': a,
                'operand_b': b,
                'correct_answer': 'a' if a > b else 'b',
                'display': f'compare_{a}_vs_{b}'
            })
        # Partition (5 trials)
        else:
            base = random.randint(2, 100) * 2  # Even number
            trials.append({
                'trial_id': i + 1,
                'task': 'partition',
                'operand_a': base,
                'correct_answer': base // 2,
                'display': f'split_{base}'
            })
    return trials


def generate_spatial_trials(n_trials=15):
    """Generate spatial-sequential task trials"""
    trials = []
    for i in range(n_trials):
        # Ordinal comparison (5 trials)
        if i < 5:
            a = random.randint(1, 100)
            b = random.randint(1, 100)
            while abs(a - b) < 5:  # Ensure discriminable
                b = random.randint(1, 100)
            trials.append({
                'trial_id': i + 1,
                'task': 'ordinal_comparison',
                'operand_a': a,
                'operand_b': b,
                'correct_answer': 'a' if a > b else 'b',
                'display': f'is_{a}_gt_{b}'
            })
        # Counting forward (5 trials)
        elif i < 10:
            a = random.randint(10, 98)
            trials.append({
                'trial_id': i + 1,
                'task': 'counting_forward',
                'operand_a': a,
                'correct_answer': a + 1,
                'display': f'next_after_{a}'
            })
        # Number line placement (5 trials)
        else:
            value = random.randint(1, 100)
            position = value / 100.0
            trials.append({
                'trial_id': i + 1,
                'task': 'number_line',
                'operand_a': value,
                'correct_answer': round(position, 2),
                'tolerance': 0.05,
                'display': f'place_{value}_on_line'
            })
    return trials


def generate_training_trials():
    """Generate training phase trials (glyph-digit mapping)"""
    trials = []
    # Single-digit identification
    for i in range(20):
        digit = random.randint(0, 9)
        trials.append({
            'trial_id': i + 1,
            'block': 1,
            'type': 'single_digit',
            'digit': digit,
            'correct_answer': digit
        })
    # Two-digit composition
    for i in range(20):
        tens = random.randint(1, 9)
        ones = random.randint(0, 9)
        trials.append({
            'trial_id': i + 21,
            'block': 2,
            'type': 'two_digit',
            'tens': tens,
            'ones': ones,
            'correct_answer': tens * 10 + ones
        })
    return trials


def generate_transfer_problems():
    """Generate transfer task word problems"""
    return [
        {'id': 1, 'text': 'You have C B objects and get D more. How many total?', 
         'answer': 32, 'notation': 'collection'},
        {'id': 2, 'text': 'You have D F objects. You give away a. How many remain?',
         'answer': 39, 'notation': 'motion'},
        {'id': 3, 'text': 'Compare: is F E larger than E G?',
         'answer': 'smaller', 'notation': 'motion'},
        {'id': 4, 'text': 'Split G B into two equal groups. How many per group?',
         'answer': 33, 'notation': 'collection'},
        {'id': 5, 'text': 'You have A B objects and triple them. How many?',
         'answer': 276, 'notation': 'control'},
        {'id': 6, 'text': 'What is B D plus E G? Write in notation.',
         'answer': 159, 'notation': 'control'},
        {'id': 7, 'text': 'If you have C A objects and lose F, how many?',
         'answer': 26, 'notation': 'collection'},
        {'id': 8, 'text': 'What comes after D H?',
         'answer': 46, 'notation': 'motion'},
        {'id': 9, 'text': 'Standard notation: What is 24 + 17?',
         'answer': 41, 'notation': 'standard'},
        {'id': 10, 'text': 'Standard notation: What is 53 - 28?',
         'answer': 25, 'notation': 'standard'}
    ]


def generate_catch_trials():
    """Generate attention check trials"""
    return [
        {'id': 1, 'question': 'For this question, select option 3.', 
         'options': [1, 2, 3, 4], 'correct': 3},
        {'id': 2, 'question': 'What notation system are you using? Press space to continue.',
         'options': ['space'], 'correct': 'space'},
        {'id': 3, 'question': 'Click the largest number: [B F] [E G] [A C]',
         'options': ['B F', 'E G', 'A C'], 'correct': 'E G'}
    ]


def generate_participant_sequence(participant_id):
    """Generate a complete stimulus sequence for one participant"""
    # Randomize group assignment
    groups = ['collection', 'motion', 'control']
    group = groups[participant_id % 3]
    
    # Select glyph mapping
    glyph_map = {
        'collection': COLLECTION_GLYPHS,
        'motion': MOTION_GLYPHS,
        'control': CONTROL_GLYPHS
    }[group]
    
    # Counterbalance block order
    block_order = ['collection_first', 'spatial_first']
    if participant_id % 2 == 0:
        block_order = block_order[::-1]
    
    # Generate all trials
    training = generate_training_trials()
    collection_trials = generate_collection_trials()
    spatial_trials = generate_spatial_trials()
    transfer = generate_transfer_problems()
    catch = generate_catch_trials()
    
    # Assign final order based on block order
    if block_order[0] == 'collection_first':
        task_sequence = collection_trials + spatial_trials
    else:
        task_sequence = spatial_trials + collection_trials
    
    return {
        'participant_id': participant_id,
        'group': group,
        'glyph_map': glyph_map,
        'block_order': block_order,
        'training_trials': training,
        'task_trials': task_sequence,
        'transfer_problems': transfer,
        'catch_trials': catch
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--experiment', type=int, default=1)
    parser.add_argument('--n_participants', type=int, default=324)
    parser.add_argument('--output_dir', type=str, default='materials/exp1/stimuli/')
    args = parser.parse_args()
    
    if args.experiment == 1:
        os.makedirs(args.output_dir, exist_ok=True)
        
        # Generate per-participant sequences
        all_sequences = []
        for pid in range(1, args.n_participants + 1):
            seq = generate_participant_sequence(pid)
            all_sequences.append(seq)
        
        # Write master CSV (metadata only, not individual trials)
        with open(os.path.join(args.output_dir, 'participant_assignments.csv'), 'w') as f:
            writer = csv.DictWriter(f, ['participant_id', 'group', 'block_order'])
            writer.writeheader()
            for seq in all_sequences:
                writer.writerow({
                    'participant_id': seq['participant_id'],
                    'group': seq['group'],
                    'block_order': '_'.join(seq['block_order'])
                })
        
        print(f"Generated {len(all_sequences)} participant sequences")
        print(f"Groups: Collection={sum(1 for s in all_sequences if s['group']=='collection')}, "
              f"Motion={sum(1 for s in all_sequences if s['group']=='motion')}, "
              f"Control={sum(1 for s in all_sequences if s['group']=='control')}")


if __name__ == '__main__':
    import os
    main()
```

## Experiment 1 Stimulus Preview

### Collection-Aligned System (System A)

```
Value: 2 0
Glyphs: B O

The digit "B" in the left position represents 2 tens = 20 objects.
The glyph "O" (circle) represents zero ones — an empty container.

Addition example: "Combine B O and C" = 2 tens + 0 ones + 3 = 23 → C B
```

### Motion-Aligned System (System B)

```
Value: 3 1 5
Glyphs: c a e

Position 1 (hundreds): c = 3, height proportional to 3
Position 2 (tens):    a = 1, height proportional to 1
Position 3 (ones):    e = 5, height proportional to 5

The ascending height profile [medium, low, high] visually encodes 3-1-5.
```

### Mixed/Inconsistent Control (System C)

```
Value: 6 1 7
Glyphs: Y X Z

All glyphs have equal visual weight. No height encoding.
No container metaphor. Standard positional semantics only.
```

---

## Data Collection Platform Setup

### Gorilla.sc Integration

1. Create experiment at gorilla.sc
2. Upload glyph images as stimuli
3. Configure task nodes:
   - Consent form (text display)
   - BNT questionnaire (survey node)
   - AMAS questionnaire (survey node)
   - Training tutorial (HTML node with embedded JS)
   - Practice blocks (task node with feedback)
   - Task battery (task node, counterbalanced)
   - Transfer problems (task node)
   - Debrief (survey node)
4. Set up Prolific integration for recruitment + compensation
5. Test full experiment flow with N=5 pilot participants

### Prolific Pre-Screener

```
Screening questions:
1. "Do you have a degree in mathematics or work as a mathematician?" [Yes/No] → EXCLUDE Yes
2. "Have you studied non-decimal number systems (e.g., binary, hexadecimal) for more than one week?" [Yes/No] → EXCLUDE Yes
3. "Device type:" [Desktop/Laptop/Tablet/Mobile] → EXCLUDE Tablet/Mobile
```

---

## IRB Application Materials

The following documents are required for IRB submission (templates to be completed with collaborating institution letterhead):

1. **Protocol Narrative** — This document (experimental-protocol.md)
2. **Informed Consent Form** — Experiment-specific consent templates
3. **Recruitment Materials** — Prolific study description, school invitation letters (Exp 3)
4. **Data Safety Monitoring Plan** — Pre-registered stopping rules (Exp 3 only)
5. **Debriefing Script** — Full explanation of hypotheses (all experiments)
6. **Conflict of Interest Declaration** — QNFO-ULA open research commitment

---

*Materials inventory created 2026-07-19. Stimuli to be generated using stimulus_generator.py when Phase 2 data collection begins.*
