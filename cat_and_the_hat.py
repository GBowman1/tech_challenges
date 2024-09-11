# using cathat.txt
    # * Can you parse it to figure out how many times each word appears in the story?
    #   * Which word appears the most?
    #     * How many words are there in total?
    #     * Did you consider capitalization?
    #     * What about punctuation?
    #     * What about spacing?
    #     * Can you solve in JavaScript? Go? C? Assembly?

# 1. Read the file
# 2. Parse the file
# 3. Count the words
# 4. Find the word that appears the most
# 5. Count the total words
# 6. Consider capitalization
# 7. Consider punctuation
# 8. Consider spacing
# 9. Solve

class CatAndTheHat:
    def __init__(self):
        self.words = {}
        self.total_words = 0
        self.most_common_word = None
        self.most_common_word_count = 0

    def read_file(self, file_path):
        with open(file_path) as f:
            self.text = f.read()
    
    def parse_file(self):
        self.words = {}
        self.total_words = 0
        self.most_common_word = None
        self.most_common_word_count = 0
        words = self.text.split()
        for word in words:
            word = word.lower()
            word = ''.join(char for char in word if char.isalnum())
            if word in self.words:
                self.words[word] += 1
            else:
                self.words[word] = 1
            self.total_words += 1
            if self.words[word] > self.most_common_word_count:
                self.most_common_word = word
                self.most_common_word_count = self.words[word]

    def print_results(self):
        print(f'Total words: {self.total_words}')
        print(f'Most common word: {self.most_common_word} ({self.most_common_word_count} times)')
        print('Word count:')
        for word, count in sorted(self.words.items(), key=lambda item: item[1], reverse=True):
            print(f'{word}: {count}')

    def run(self, file_path):
        self.read_file(file_path)
        self.parse_file()
        self.print_results()

if __name__ == '__main__':
    cat_and_the_hat = CatAndTheHat()
    cat_and_the_hat.run('cathat.txt')
