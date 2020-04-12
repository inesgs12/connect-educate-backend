class Parent < User
    has_many :tasks
    enum english_proficiency: {
        beginner: 0,
        conversational: 1,
        proficient: 3,
        fluent: 4,
        native: 5
     }
end