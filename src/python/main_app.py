#!/usr/bin/env python3
"""
Main practice application for Python concepts, algorithms, and system utilities.
"""

import sys
import platform
import os
from collections import Counter


def is_palindrome(text: str) -> bool:
    """Check if a given string is a palindrome (ignoring case and non-alphanumeric chars)."""
    cleaned = "".join(ch.lower() for ch in text if ch.isalnum())
    return cleaned == cleaned[::-1]


def prime_factors(n: int) -> list[int]:
    """Return the list of prime factors of a positive integer n."""
    factors = []
    d = 2
    temp = n
    while d * d <= temp:
        while temp % d == 0:
            factors.append(d)
            temp //= d
        d += 1
    if temp > 1:
        factors.append(temp)
    return factors


def word_frequency(text: str) -> dict[str, int]:
    """Calculate word frequency counts in text."""
    words = [w.lower().strip(".,!?;:\"'()[]{}") for w in text.split()]
    words = [w for w in words if w]
    return dict(Counter(words).most_common())


def get_system_info() -> dict[str, str]:
    """Retrieve runtime and system environment metadata."""
    return {
        "Operating System": platform.system(),
        "OS Release": platform.release(),
        "Architecture": platform.machine(),
        "Python Version": platform.python_version(),
        "Current Directory": os.getcwd(),
    }


def run_tests():
    """Run basic assertion tests for utilities."""
    print("Running utility tests...")
    assert is_palindrome("Racecar"), "Test palindrome failed"
    assert is_palindrome("A man, a plan, a canal: Panama"), "Test complex palindrome failed"
    assert not is_palindrome("Phoenix"), "Test non-palindrome failed"

    assert prime_factors(28) == [2, 2, 7], "Test prime factors failed"
    assert prime_factors(13) == [13], "Test prime factor prime number failed"

    freq = word_frequency("apple orange apple banana")
    assert freq["apple"] == 2 and freq["orange"] == 1, "Test word frequency failed"

    print("All tests passed successfully! ✅")


def main():
    if len(sys.argv) > 1 and sys.argv[1] == "--test":
        run_tests()
        return

    print("==========================================")
    print("    Project Phoenix - Python Utilities   ")
    print("==========================================")
    print("System Information:")
    for k, v in get_system_info().items():
        print(f"  • {k}: {v}")
    print("------------------------------------------")

    demo_text = "Able was I ere I saw Elba"
    print(f"Palindrome check for '{demo_text}': {is_palindrome(demo_text)}")

    num = 84
    print(f"Prime factors of {num}: {prime_factors(num)}")

    sample = "learn code practice learn test repeat"
    print(f"Word frequency for '{sample}': {word_frequency(sample)}")
    print("==========================================")


if __name__ == "__main__":
    main()
