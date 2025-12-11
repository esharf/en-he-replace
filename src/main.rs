use std::collections::HashMap;

const HE: &str = r#"/׳קראטוןםפ][שדגכעיחלךף,ֿ;זסבהנמצתץ.}{:״|~><?"#;
const EN: &str = r#"qwertyuiop[]asdfghjkl;'\`zxcvbnm,./{}:"|~<>?"#;

fn build_char_maps(from: &str, to: &str) -> (HashMap<char, char>, HashMap<char, char>) {
    let mut forward = HashMap::new();
    let mut reverse = HashMap::new();

    for (f, t) in from.chars().zip(to.chars()) {
        forward.insert(f, t);
        reverse.insert(t, f);
    }

    (forward, reverse)
}

fn replace_chars(text: &str, char_map: &HashMap<char, char>) -> (String, usize) {
    let mut result = String::new();
    let mut count = 0;

    for c in text.chars() {
        if let Some(&replacement) = char_map.get(&c) {
            result.push(replacement);
            count += 1;
        } else {
            result.push(c);
        }
    }

    (result, count)
}

fn main() {
    let (he_to_en, en_to_he) = build_char_maps(HE, EN);

    let input = std::env::args().nth(1).unwrap_or_else(|| {
        eprintln!("Usage: {} <text>", std::env::args().next().unwrap());
        std::process::exit(1);
    });

    let (f_he_converted, f_he_count) = replace_chars(&input, &he_to_en);
    let (f_en_converted, f_en_count) = replace_chars(&input, &en_to_he);

    let final_text = if f_he_count > f_en_count {
        f_he_converted
    } else {
        f_en_converted
    };

    println!("{}", final_text.trim());
}
