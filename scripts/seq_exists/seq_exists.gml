function seq_exists(layer_name, seq) {
    if (is_undefined(seq) || seq == -1) {
        return false;
    }
    return layer_sequence_exists(layer_name, seq);
}
