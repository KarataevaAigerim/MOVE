# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
WorkoutDay.destroy_all
Day.destroy_all
Week.destroy_all
Program.destroy_all
Workout.destroy_all

puts "Workout Seeding..."

workouts_data = [ 
    {
        name: "Dumbbell Flat Bench Chest Press",
        sets: "4 sets of 10 reps",
        description: "Lie on a flat bench in a supine position...",
        difficulty: "Beginner",
        pt: "Begin by slowly lowering the weight down and out...",
        video_url: "",
        img_url: "www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/228-1.jpg"
      },
      {
        name: "Dumbbell Incline Bench Chest Press",
        sets: "4 sets of 10 reps",
        description: "Lie on an incline bench in a supine position...",
        difficulty: "Beginner",
        pt: "Begin by slowly lowering the weight down and out...",
        video_url: "",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/229-1.jpg"
      },
      {
        name: "Barbell Incline Bench Chest Press",
        sets: "4 sets of 10 reps",
        description: "Lie on an incline bench in a supine position...",
        difficulty: "Intermediate",
        pt: "Begin by slowly lowering the weight down and out...",
        video_url: "",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/230-1.jpg"
      },
      {
        name: "Barbell Flat Bench Chest Press",
        sets: "4 sets of 10 reps",
        description: "Lie on a flat bench in a supine position...\nPlant your feet firmly on the floor...",
        difficulty: "Intermediate",
        video_url: "",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/231-2.jpg",
        pt: "Place the head, shoulder blades, and sacrum on the bench while maintaining a natural arch in the lower back...\nAs you lower the bar, progressively tighten all involved muscles as the bar approaches your chest."
      },
      {
        name: "Bar Dips",
        sets: "4 sets of 10 reps", 
        description: "With the feet placed firmly on the supporting cross bars, grasp the dip bars...\nOnce the arms are in full support of the body...",
        difficulty: "Intermediate",
        video_url: "",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/232-2.jpg",
        pt: "Slowly lower the body in a controlled manner through elbow flexion...\nContinue to contract the triceps until returning to the starting position."
      },
      {
        name: "Dumbbell Flyes on the Bench",
        sets: "4 sets of 10 reps",
        description: "Lie on the bench with the dumbbells in your hands close to your chest, back flat against the bench, and feet flat against the floor...\nExtend your arms toward the ceiling, palms facing up...",
        pt: "With a slight bend on your elbows, slowly lower the weights in a wide arc until you feel a stretch...\nConcentrate on contracting the chest muscles to bring the weights back together...",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/233-2.jpg",
        difficulty: "Beginner",
        video_url: ""
      },
      {
        name: "Overhead Pulldown",
        sets: "4 sets of 10 reps",
        description: "Grasp the bar using a pronated grip approximately 6 inches wider than shoulder width...\nGrasp the bar with the arms slightly bent with the elbows pointed away from the body...",
        pt: "From the starting position, pull the shoulder blades down and together...\nIn a controlled manner, return the bar back to its starting position and repeat...",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/236-2.jpg",
        difficulty: "Beginner",
        video_url: ""
      },
      {
        name: "Seated Machine Row",
        sets: "4 sets of 10 reps",
        description: "Plant your feet firmly against the foot platform...\nAdjust the seat so that the handles in front of you are slightly lower than shoulder height...",
        pt: "From the starting position, retract the scapula by pulling the shoulder blades down and squeezing together...\nIn a controlled fashion, return to the starting position...",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/237-2.jpg",
        difficulty: "Beginner",
        video_url: ""
      },
      {
        name: "Chin Up",
        sets: "4 sets of 10 reps",
        description: "Grasp the bar using a supinated grip, approximately shoulder width...\nGrasp the bar with the arms slightly bent and the elbows pointed away from the body...",
        pt: "Retract and adduct the scapula...\nPull up until your chin is elevated above the bar without moving your neck.",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/238-2.jpg",
        difficulty: "Advanced",
        video_url: ""
      },
      {
        name: "Pull Up",
        sets: "4 sets of 10 reps",
        description: "Grasp the bar using a pronated grip, approximately 6 inches wider than shoulder width...\nArms should be slightly bent with the elbows pointed away from the body...",
        pt: "Retract and adduct the scapula...\nPull up until your chin is elevated above the bar without moving your neck.",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/238-2.jpg",
      },
      {
        name: "Bent Over Row",
        sets: "4 sets of 10 reps",
        description: "Plant your feet firmly on the ground in a stance slightly wider than shoulder width apart, with the knees slightly bent...\nGrasp the bar with a pronated grip slightly wider than shoulder width...",
        pt: "From the starting position, retract the scapula by pulling the bar up toward your chest...\nIn a controlled fashion, return to the starting position.",
        difficulty: "Intermediate",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/240-2.jpg",
        video_url: ""
      },
      {
        name: "Supine Pullover on Ball",
        sets: "4 sets of 10 reps",
        description: "Lay on the ball with head and shoulders in contact with the ball...\nKeep shoulders, hips, and knees in alignment with one another...",
        pt: "Start by holding a dumbbell in both hands so that the end of the dumbbell is held with a triangular grip...\nSlowly return to the starting position and repeat.",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/241-2.jpg",
        video_url: ""
      },
      {
        name: "Military press",
        sets: "4 sets of 10 reps",
        description: "Stand with the feet planted on the ground underneath you, approximately shoulder width apart...\nGrasp the bar with the base of your palm, with the hands spaced approximately shoulder width apart...",
        pt: "Squeeze your glutes so as to stay tight throughout the movement and to prevent leaning back...\nThe head should be back to the forward position at lockout.",
        difficulty: "Intermediate",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/244-2.jpg",
        video_url: ""
      },
      {
        name: "Barbell Upright Row",
        sets: "4 sets of 10 reps",
        description: "Stand with feet slightly wider than shoulder width apart and with knees slightly flexed...\nGrasp the bar with a pronated grip and with the bar resting against the front of your thighs...",
        pt: "Begin by pulling the bar up along the body...\nSlowly allow the bar to travel along the body back to the starting position.",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/245-2.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Flyes",
        sets: "4 sets of 10 reps",
        description: "Stand with the feet planted firmly on the ground approximately shoulder width apart...\nThe knees should be slightly flexed...",
        pt: "Laterally raise the arms by contracting the posterior deltoids...\nSlowly lower the arms back to the starting position.",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/246-1.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Lateral Raise",
        sets: "4 sets of 10 reps",
        description: "Stand with the feet planted firmly on the ground approximately shoulder width apart...\nThe knees should be slightly flexed...",
        pt: "Begin by contracting the medial deltoids, laterally raising the arms...\nSlowly lower the arms back to the starting position and repeat.",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/247-2.jpg",
        video_url: ""
      },
      {
        name: "Single Arm Cable Posterior Deltoid Raise",
        sets: "4 sets of 10 reps",
        description: "The legs should be placed in an athletic stance, with the feet slightly wider than shoulder width apart and knees slightly bent...\nFace 90° to the right of the cable...",
        pt: "Retract the scapula and abduct the right arm until the elbow is parallel to the floor, but not higher than your shoulder...\nSlowly return the weight to the starting position.",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/248-2.jpg",
        video_url: ""
      },
      {
        name: "Seated Dumbbell Press",
        sets: "4 sets of 10 reps",
        description: "Sit on a bench with a neutral spine...\nThe weights should be held with a supinated grip...",
        pt: "Press both dumbbells towards the ceiling in a slow and controlled manner...\nRepeat for the specified number of repetitions.",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/249-2.jpg",
        video_url: ""
      },
      {
        name: "One Arm Dumbbell Triceps Extension on Stability Ball",
        sets: "4 sets of 10 reps",
        description: "Sit on a stability ball, with feet planted firmly on the floor...\nExtend the dumbbell over the head as in the end point of a dumbbell shoulder press. This is the starting position.",
        pt: "Bending from the elbow, bring the dumbbell down behind the head, making sure not to lean forward...\nContract the triceps muscles and return the weight to the starting position.",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/252-1.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Triceps Kickback",
        sets: "4 sets of 10 reps",
        description: "Without moving the upper arm, extend the elbow by pushing the dumbbell back and up until the arm is straight...\nPause for a second to build up the eccentric tension and then return to starting position...",
        pt: "Keeping your upper arm still, straighten your arm behind you until your entire arm is parallel to the floor and one end of the dumbbell points toward the floor...\nStop just short of locking the elbow joint and slowly return to the starting position...",
        difficulty: "Intermediate",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/253-2.jpg",
        video_url: ""
      },
      {
        name: "French Press",
        sets: "4 sets of 10 reps",
        description: "With the feet shoulder width apart and a natural arch in the lower back, place your hands at shoulder width on the bar with a pronated grip...\nThe head and shoulders point forward and the toes should be in an athletic stance.",
        pt: "Press the bar overhead...\nKeep the upper arms locked into position and slowly lower the bar behind the head without allowing the back to arch or the upper arms to move...\nReturn the bar to the starting position, just shy of locking out the elbows.",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/254-2.jpg",
        video_url: ""
      },
      {
        name: "Triceps Cable Extension with Bar",
        sets: "4 sets of 10 reps",
        description: "Stand with your feet slightly wider than shoulder width apart...\nThe knees should be slightly bent, not locked...\nGrab the bar attached to the high pulley with your hands in a pronated grip...",
        pt: "Contract the triceps and slowly lower your arms...\nAs you reach the end of the range of motion, contract the triceps...\nPause for one second, “squeeze” the triceps muscles, and return to the starting position...",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/255-1.jpg",
        video_url: ""
      },
      {
        name: "Bar Dips B",
        sets: "4 sets of 10 reps",
        description: "Position yourself between the bars so that your arms hold you erect and you are able to dip to a low position without having your feet touch the ground...\nHold your body erect, with your elbows into your sides...",
        pt: "Slowly lower yourself to the point where your upper arms are at a 90° angle with your forearms and approximately parallel with the dip bar...\nDo not go lower than parallel to insure that the tension remains on your triceps...",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/256-2.jpg",
        video_url: ""
      },
      {
        name: "Cable Biceps Curl",
        sets: "4 sets of 10 reps",
        description: "Stand with your feet slightly wider than shoulder width apart...\nThe knees should be slightly bent, not locked...\nThe arms should be at your sides holding onto the cable from a low pulley with a supinated grip. This is the starting position.",
        pt: "Contract the biceps, moving the forearm out and up through a natural range of motion, with your forearm in a supine position...\nIsometrically contract the muscle at the end of the concentric contraction and hold for a second...\nReturn to the starting position, with the elbows aligned under the shoulders and slightly bent...",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/260-2.jpg",
        video_url: ""
      },
      {
        name: "Barbell Biceps Curl",
        sets: "4 sets of 10 reps",
        description: "Stand with your feet slightly wider than shoulder width apart...\nThe knees should be slightly bent, not locked...\nThe arms should be at your sides and extended while holding a barbell using a supinated grip. This is the starting position.",
        pt: "Contract the biceps, moving the forearm out and up through a natural range of motion, with your forearm in a neutral position...\nIsometrically contract the muscle at the end of the concentric contraction and hold for a second...\nReturn to the starting position, with the elbows aligned under the shoulders and slightly bent...",
        difficulty: "Advanced",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/261-2.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Biceps Curl",
        sets: "4 sets of 10 reps",
        description: "Stand with your feet slightly wider than shoulder width apart...\nThe knees should be slightly bent, not locked...\nThe arms should be at your sides holding onto the barbell with a supinated grip. This is the starting position.",
        pt: "Contract the biceps, moving the forearm out and up through a natural range of motion, with your forearm in a supine position...\nIsometrically contract the muscle at the end of the concentric contraction and hold for a second...\nReturn to the starting position, with the elbows aligned under the shoulders and slightly bent...",
        difficulty: "Beginner",
        img_url: "https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/262-2.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Hammer Curl",
        sets: "4 sets of 10 reps",
        description: "Stand with your feet slightly wider than shoulder width apart.\nThe knees should be slightly bent, not locked.\nThe arms should be at your sides holding onto the dumbbells with a neutral grip.",
        pt: "Contract the biceps, moving the forearm out and up through a natural range of motion, with your forearms in a neutral position.\nIsometrically contract the muscle at the end of the concentric contraction and hold for a second.\nReturn to the starting position, with the elbows aligned under the shoulders and slightly bent.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/263-2.jpg",
        video_url: ""
      },
      {
        name: "Dumbbell Shrug",
        sets: "4 sets of 10 reps",
        description: "Grasp each dumbbell using a pronated grip approximately shoulder width.\nMake sure that you have a solid stance while standing upright.\nThe neck should be in a neutral position, with the head facing forward. This is the starting position.",
        pt: "From the starting position, retract the scapula by squeezing your shoulder blades together.\nSimultaneously elevate and rotate the scapula upward by attempting to bring your shoulders as close to your ears as possible.\nHold the contraction for a second and then slowly return to the starting position.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/270-2.jpg",
        video_url: ""
      },
      {
        name: "Crunches",
        sets: "4 sets of 10 reps",
        description: "Begin in a supine position by lying on the floor or a floor mat.\nPlace your feet on a bench, with your hips and knees flexed at 90°.\nRest your arms across your chest. This is the starting position.",
        pt: "Flex the neck to move the chin to the chest by contracting the abdominal muscles and oblique muscles. Begin by pulling the rib cage up and over the pelvis.\nWhile keeping the lower back flat, continue to pull the rib cage up and over the pelvis.\nSlowly allow the trunk to uncurl then the neck to extend back to the starting position, while maintaining tension in the abdominal muscles.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/274-2.jpg",
        video_url: ""
      },
      {
        name: "Oblique Stability Ball Crunch",
        sets: "4 sets of 10 reps",
        description: "Begin on a stability ball, with the back slightly extended.\nYour shoulders should be slightly higher than the hips.\nYour feet should be flat on the ground with your knees slightly wider than shoulder width apart.\nFlex the knees to form a 90° angle between the upper and lower legs.\nPlace both hands on the back of the head. This is the starting position.",
        pt: "Begin by contracting the abdominal muscles and pulling the rib cage toward the pelvis.\nWhile keeping the lower back pressed firmly against the stability ball, continue to pull the left shoulder up and toward the right knee until the abdominal muscles are fully contracted.\nSlowly allow the trunk to uncurl while maintaining tension in the abdominal muscles.\nSwitch the hand placement and repeat with the right shoulder moving toward the left knee.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/276-2.jpg",
        video_url: ""
      },
      {
        name: "Kneeling Cable Crunch",
        sets: "4 sets of 10 reps",
        description: "Secure a triceps rope attachment to a high cable pulley system.\nGrasp the rope with a neutral grip.\nFacing towards the cable machine, kneel down on the floor with the upper body erect.\nThe arms should serve as anchors and should not move during the exercise.",
        pt: "Draw the umbilicus inward, thus engaging the transverse abdominis.\nContract the abdominal muscles and slowly draw the rib cage closer to the pelvis.\nThe cable should move with the body.\nSlowly uncurl the trunk and return to the starting position.",
        difficulty: "advanced",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/277-2.jpg",
        video_url: ""
      }, 
      {
        name: "Kneeling Cable Crunch",
        sets: "4 sets of 10 reps",
        description: "Secure a triceps rope attachment to a high cable pulley system.\nGrasp the rope with a neutral grip.\nFacing towards the cable machine, kneel down on the floor with the upper body erect.\nThe arms should serve as anchors and should not move during the exercise.",
        pt: "Draw the umbilicus inward, thus engaging the transverse abdominis.\nContract the abdominal muscles and slowly draw the rib cage closer to the pelvis.\nThe cable should move with the body.\nSlowly uncurl the trunk and return to the starting position.",
        difficulty: "advanced",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/277-2.jpg",
        video_url: ""
      },
      {
        name: "Hanging Leg Raise",
        sets: "4 sets of 10 reps",
        description: "Grasp a pull-up bar with a pronated grip.\nAllow the body to hang.",
        pt: "Bring the knees up towards the chest until they form a 90° angle with both the hips and the lower leg.\nWith the back in a neutral position, continue to pull the legs up, contracting the abdominal muscles until the thighs are parallel to the floor.\nSlowly allow the legs to return to their starting position while maintaining tension on the abdominal muscles.",
        difficulty: "advanced",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/278-2.jpg",
        video_url: ""
      },
      {
        name: "Forward Stability Ball Roll",
        sets: "4 sets of 10 reps",
        description: "Kneel behind the ball.\nPlace your forearms on the ball.\nInhale and draw your umbilicus inward.",
        pt: "Roll forwards on the ball with motion at the hip and shoulder joints.\nRoll out as far as you can with proper spinal alignment.\nContract the abdominals and return to the starting position.",
        difficulty: "advanced",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/279-2.jpg",
        video_url: ""
      },
      {
        name: "Leg Press",
        sets: "4 sets of 10 reps",
        description: "Place the feet in a stance slightly wider than shoulder width on the platform.\nThe pad should support the back, neck, and gluteal muscles.\nThe hips should be flexed at approximately 45°.\nGrasp the handles at the sides or hold onto the sides of the seat if there are no handles provided.",
        pt: "Contract the quadriceps and push against the platform with the feet.\nExtend the legs until they are straight, but just short of locking out the knees.\nSlowly bend the knees and return the legs to the starting position.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/289-1.jpg",
        video_url: ""
      },
      {
        name: "Stationary Lunge with db",
        sets: "4 sets of 10 reps",
        description: "Stand erect with feet shoulder width apart.\nLet your arms hang straight down holding weights at the sides of the body.\nKeep your eyes focused straight ahead on a fixed point.",
        pt: "Take a large step forward.\nKeep the torso erect.\nFirmly plant the stepping foot, but keep the planted foot in the fixed position.\nFeet should be pointed straight ahead.\nSlowly flex (lower) the lead hip and knee until the planted leg’s knee comes within one to two inches from the floor.\nContract the quadriceps of the front leg and push back to the starting position.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/290-2.jpg",
        video_url: ""
      },
      {
        name: "Leg Extension",
        sets: "4 sets of 10 reps",
        description: "Sit on the machine so the pad supports your back.\nPlace the feet underneath the bottom roller so it is touching the front of the shin.\nThe knee joint should be in line with the axis point (lever) of the resistance.",
        pt: "Grasp the handles on the side of the seat if provided, or grasp the sides of the seat.\nContract your quadriceps as you extend the legs just short of locking them out.\nSlowly lower the legs back to the starting position and repeat.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/291-2.jpg",
        video_url: ""
      },
      {
        name: "Seated Leg Curl",
        sets: "4 sets of 10 reps",
        description: "Sit in a leg curl machine and adjust the seat so the knee joint is in the middle of the fulcrum point of the machine.\nThe lower pad should be on the back of the ankles.\nAdjust the upper pad so that it is securely over the quadriceps.\nFeet should be in a neutral position",
        pt: "Contract the hamstrings and draw the lower leg back towards the seat.\nMake sure the thighs and hips are firmly against the pad.\nOnce you have reached a full range of motion of the concentric phase, slowly raise the roller to the starting position and repeat.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/292-2.jpg",
        video_url: ""
      },
      {
        name: "Barbell Squat",
        sets: "4 sets of 10 reps",
        description: "In a ready position, begin with the legs shoulder width apart, with the feet pointed out about 20° to 30°.\nFlex the hips and knees, keep the weight over the ankles and a slight forward lean in the trunk.",
        pt: "Begin with the knees slightly bent and slowly begin to lower the body as far as you can while maintaining a natural arch in the lower back.\nContract the gluteal muscles and hamstrings.\nSlowly begin to straighten the legs while keeping your weight over your ankles.\nReturn to your original start position while maintaining proper spinal positioning.",
        difficulty: "intermediate",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/293-2.jpg",
        video_url: ""
      },
      {
        name: "Seated Calf Raise",
        sets: "4 sets of 10 reps",
        description: "Place the balls of your feet flat on the step, with your feet and legs parallel to each other.\nMake sure the toes are pointed straight ahead.\nPosition the thighs securely underneath the pads.\nKeep your upper body erect, maintaining a neutral spine. This is the starting position.",
        pt: "Begin by plantar flexing the ankles and removing the support lever.\nRelax the ankles, allowing the heels to drop off below the step (starting position).\nPush up on your toes through a full range of motion.\nSlowly lower your heels to the starting position and repeat.",
        difficulty: "beginner",
        img_url: "!https://www.issatrainer.com/certification-courses/textbooks/453/fitness-the-complete-guide-ninth-edition/images/296-2.jpg",
        video_url: ""
      }
    ]

    # Create workout records using the data
workouts = Workout.create(workouts_data)

puts "Workouts created"

puts "Program Seeding..."
program = Program.create(name: "12 week gym program", content: "This program is designed to help you get started with your fitness journey.", price: 99)

puts "Program Week Seeding..."
12.times do |i|
    Week.create(week_number: i + 1, description: "Intro into the gym.", program: program)
end

puts "Program Week Days Seeding..."
descriptions = ["Lower body A", "Upper body A", "Lower body B", "Upper body B", "Full body"]

Week.all.each do |week|
    5.times do |i|
        Day.create(day_number: i + 1, description: descriptions[i], week: week)
    end
end

puts "Workout Days Seeding..."

# Initialize workouts and days arrays
workouts = Workout.all.order(:id).to_a
days = Day.all.order(:id).to_a


# Define the associations between workouts and days
workout_day_associations = [
  { workout_id: workouts[0].id, day_id: days[0].id},
  { workout_id: workouts[1].id, day_id: days[0].id },
  { workout_id: workouts[2].id, day_id: days[0].id },
 
  { workout_id: workouts[3].id, day_id: days[1].id },
  { workout_id: workouts[4].id, day_id: days[1].id },
  { workout_id: workouts[5].id, day_id:days[1].id },

  { workout_id: workouts[6].id, day_id: days[2].id },
  { workout_id: workouts[7].id, day_id:days[2].id },
  { workout_id: workouts[8].id, day_id: days[2].id },

  { workout_id: workouts[9].id, day_id: days[3].id },
  { workout_id: workouts[10].id, day_id: days[3].id},
  { workout_id: workouts[11].id, day_id: days[3].id },

  { workout_id: workouts[12].id, day_id:days[4].id  },
  { workout_id: workouts[13].id, day_id: days[4].id },
  { workout_id: workouts[14].id, day_id: days[4].id },

  { workout_id: workouts[15].id, day_id: days[5].id },
  { workout_id: workouts[16].id, day_id: days[5].id },
  { workout_id: workouts[17].id, day_id: days[5].id },

  { workout_id: workouts[18].id, day_id: days[6].id },
  { workout_id: workouts[19].id, day_id: days[6].id },
  { workout_id: workouts[20].id, day_id: days[6].id },

  { workout_id: workouts[21].id, day_id: days[7].id },
  { workout_id: workouts[22].id, day_id: days[7].id },
  { workout_id: workouts[23].id, day_id: days[7].id },
  
  { workout_id: workouts[24].id, day_id: days[8].id },
  { workout_id: workouts[25].id, day_id: days[8].id },
  { workout_id: workouts[26].id, day_id: days[8].id },

  { workout_id: workouts[27].id, day_id: days[9].id },
  { workout_id: workouts[28].id, day_id: days[9].id },
  { workout_id: workouts[29].id, day_id: days[9].id },

  { workout_id: workouts[30].id, day_id: days[10].id },
  { workout_id: workouts[31].id, day_id: days[10].id },
  { workout_id: workouts[32].id, day_id: days[10].id },

  { workout_id: workouts[33].id, day_id: days[11].id },
  { workout_id: workouts[34].id, day_id: days[11].id },
  { workout_id: workouts[35].id, day_id: days[11].id },

  { workout_id: workouts[36].id, day_id: days[12].id },
  { workout_id: workouts[37].id, day_id: days[12].id },
  { workout_id: workouts[38].id, day_id: days[12].id },

  { workout_id: workouts[39].id, day_id: days[13].id },
  { workout_id: workouts[26].id, day_id: days[13].id },
  { workout_id: workouts[25].id, day_id: days[13].id },

  { workout_id: workouts[24].id, day_id: days[14].id },
  { workout_id: workouts[23].id, day_id: days[14].id },
  { workout_id: workouts[22].id, day_id: days[14].id },
  
  { workout_id: workouts[21].id, day_id: days[15].id },
  { workout_id: workouts[20].id, day_id: days[15].id },
  { workout_id: workouts[19].id, day_id: days[15].id },
  
  { workout_id: workouts[18].id, day_id: days[16].id },
  { workout_id: workouts[17].id, day_id: days[16].id },
  { workout_id: workouts[16].id, day_id: days[16].id },

  { workout_id: workouts[15].id, day_id: days[17].id },
  { workout_id: workouts[14].id, day_id: days[17].id },
  { workout_id: workouts[13].id, day_id: days[17].id },
  
  { workout_id: workouts[12].id, day_id: days[18].id },
  { workout_id: workouts[11].id, day_id: days[18].id },
  { workout_id: workouts[10].id, day_id: days[18].id },

  { workout_id: workouts[9].id, day_id: days[19].id },
  { workout_id: workouts[8].id, day_id: days[19].id },
  { workout_id: workouts[7].id, day_id: days[19].id },

  { workout_id: workouts[6].id, day_id: days[20].id },
  { workout_id: workouts[5].id, day_id: days[20].id },
  { workout_id: workouts[4].id, day_id: days[20].id },

  { workout_id: workouts[3].id, day_id: days[21].id },
  { workout_id: workouts[2].id, day_id: days[21].id },
  { workout_id: workouts[1].id, day_id: days[21].id }
# Continue adding associations for other days and workouts
  ]
# Create workout day records using the associations
workout_day_associations.each do |association|
  WorkoutDay.create(association)
end

# workout_day_associations.each do |association|
#   day = Day.find_by(day_id: association[:day_id])
#   WorkoutDay.create(workout_id: association[:workout_id], day_id: day.id) if day
# end



# upper_body_a_day = Day.find_by(description: "Upper body A")
# workout_ids = [w1.id, w7.id, w14.id, w5.id, w15.id]  
# workout_ids.each do |workout_id|
#   WorkoutDay.create(workout_id: workout_id, day_id: upper_body_a_day.id)
# end

# upper_body_b_day = Day.find_by(description: "Upper body B")
# workout_ids = [w11.id, w13.id, w16.id, w18.id, w26.id]
# workout_ids.each do |workout_id|
#     WorkoutDay.create(workout_id: workout_id, day_id: upper_body_b_day.id)
#   end

# lower_body_a_day = Day.find_by(description: "Lower body B")
# workout_ids = [w34.id, w35.id, w37.id, w36.id, w39.id]
# workout_ids.each do |workout_id|
#     WorkoutDay.create(workout_id: workout_id, day_id: lower_body_a_day.id)
# end

# lower_body_b_day = Day.find_by(description: "Lower body B")
# workout_ids = [w38.id, w35.id, w36.id, w39.id]
# workout_ids.each do |workout_id|
#     WorkoutDay.create(workout_id: workout_id, day_id: lower_body_b_day.id)
# end

# full_body_day = Day.find_by(description: "Full body")
# workout_ids = [w35.id, w37.id, w13.id, w20.id, w29.id, w33.id]
# workout_ids.each do |workout_id|
#     WorkoutDay.create(workout_id: workout_id, day_id: full_body_day.id)
# end

puts "Seeding done."