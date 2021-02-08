
import 'package:flutter/material.dart';

Color primaryBlack = Color(0xFF01579B);

class DataSource{



  static List questionAnswers = [
    {
      "question": "What is a coronavirus?",
      "answer":
      "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
      "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
      "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
      "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
      "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
      "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
      "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
      "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
      "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
      "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
      "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
      "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question":
      "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
      "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];


  static List questionAnswersAr = [
    {
      "question": "ما هو فيروس كورونا",
      "answer":
      "فيروسات كورونا هي فصيلة كبيرة من الفيروسات التي قد تسبب المرض للحيوان أو الإنسان. في البشر ، من المعروف أن العديد من فيروسات كورونا تسبب التهابات في الجهاز التنفسي تتراوح من نزلات البرد إلى أمراض أكثر خطورة مثل متلازمة الشرق الأوسط التنفسية (ميرس) ومتلازمة الجهاز التنفسي الحاد (سارس) أحدث فيروس كورونا تم اكتشافه يسبب مرض فيروس كورونا COVID-19."
    },
    {
      "question": "ما هو كوفيد 19?",
      "answer":" هو مرض معد يسببه أحدث فيروس كورونا المكتشف. هذا الفيروس والمرض الجديد كانا مجهولين قبل بدء تفشي المرض في ووهان ، الصين ، في ديسمبر 2019."
    },
    {
      "question": "ما هي أعراض مرض كوفيد -19؟",
      "answer": "الأعراض الأكثر شيوعًا لـ COVID-19 هي الحمى والتعب والسعال الجاف. قد يعاني بعض المرضى من آلام وآلام واحتقان الأنف وسيلان الأنف والتهاب الحلق أو الإسهال. وعادة ما تكون هذه الأعراض خفيفة وتبدأ تدريجياً. يصاب بعض الأشخاص بالعدوى لكن لا تظهر عليهم أي أعراض ولا تشعر بتوعك معظم الناس (حوالي 80٪) يتعافون من المرض دون الحاجة إلى علاج خاص. يصاب حوالي 1 من كل 6 أشخاص مصابين بـ COVID-19 بمرض خطير ويصاب بصعوبة في التنفس. كبار السن ، وأولئك الذين يعانون من مشاكل طبية أساسية مثل ارتفاع ضغط الدم أو مشاكل القلب أو مرض السكري ، هم أكثر عرضة للإصابة بأمراض خطيرة. يجب على الأشخاص الذين يعانون من الحمى والسعال وصعوبة التنفس التماس العناية الطبية "

    },
    {
      "question": "كيف ينتشر المرض",
      "answer": "يمكن للأشخاص التقاط COVID-19 من الآخرين المصابين بالفيروس. يمكن أن ينتشر المرض من شخص لآخر من خلال قطرات صغيرة من الأنف أو الفم والتي تنتشر عندما يسعل أو يزفر شخص مصاب بـ COVID-19. هذه القطرات تسقط على الأشياء و الأسطح حول الشخص. ثم يصاب الأشخاص الآخرون بـ COVID-19 عن طريق لمس هذه الأشياء أو الأسطح ، ثم لمس عيونهم أو أنفهم أو فمهم. يمكن للأشخاص أيضًا التقاط COVID-19 إذا استنشقوا قطرات من شخص مصاب بـ COVID-19 يسعل أو قطرات الزفير. لهذا السبب من المهم الابتعاد أكثر من متر واحد (3 أقدام) عن الشخص المريض. \ n تقوم منظمة الصحة العالمية بتقييم البحث الجاري حول طرق انتشار COVID-19 وستستمر في مشاركة النتائج المحدثة. "

    },
    {
      "question":
      "هل ينتقل عبر الهواء",
      "answer": "تشير الدراسات حتى الآن إلى أن الفيروس المسبب لـ COVID-19 ينتقل بشكل أساسي من خلال ملامسة الرذاذ التنفسي وليس عبر الهواء"

    },
    {
      "question":"هل يمكن أن ينتقل فيروس كورونا COVID-19 من شخص ليس لديه أعراض؟"
      ,
      "answer":
    "الطريقة الرئيسية لانتشار المرض هي من خلال الرذاذ التنفسي الذي يطرده شخص يسعل. خطر الإصابة بـ كوفيد 19 من شخص ليس لديه أعراض على الإطلاق منخفض للغاية. ومع ذلك ، فإن العديد من الأشخاص المصابين بـ COVID-19 يعانون من أعراض خفيفة فقط. هذا صحيح بشكل خاص في المراحل المبكرة من المرض. لذلك من الممكن التقاط COVID-19 من شخص لديه ، على سبيل المثال ، سعال خفيف ولا يشعر بالمرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول فترة انتقال كوفيد وسيواصل تبادل النتائج المحدثة "
    },
    {
      "question":
      "هل ينتقل عبر البراز",
      "answer":"يبدو أن خطر الإصابة ب كوفيد 19 من براز شخص مصاب منخفض. بينما تشير التحقيقات الأولية إلى أن الفيروس قد يكون موجودًا في البراز في بعض الحالات ، فإن الانتشار عبر هذا الطريق ليس سمة رئيسية لتفشي المرض. منظمة الصحة العالمية هي تقييم الأبحاث الجارية حول طرق انتشار COVID-19 وسيستمر في مشاركة النتائج الجديدة. ولأن هذا يمثل خطرًا ، فهو سبب آخر لتنظيف اليدين بانتظام ، بعد استخدام الحمام وقبل تناول الطعام "

    },
    {
      "question": "ما مدي احتماليه اصابتي به",
      "answer":"تعتمد المخاطر على مكانك - وبشكل أكثر تحديدًا ، ما إذا كان هناك تفشي لـ COVID-19 يتكشف هناك. \ n بالنسبة لمعظم الأشخاص في معظم المواقع ، لا يزال خطر الإصابة بـ COVID-19 منخفضًا. ومع ذلك ، هناك الآن أماكن حول العالم (المدن أو المناطق) حيث ينتشر المرض. بالنسبة للأشخاص الذين يعيشون في هذه المناطق أو يزورونها ، فإن خطر الإصابة بـ COVID-19 أعلى. تتخذ الحكومات والسلطات الصحية إجراءات صارمة في كل مرة تظهر فيها حالة جديدة من COVID-19 تم تحديده. تأكد من الامتثال لأي قيود محلية على السفر أو التنقل أو التجمعات الكبيرة. سيقلل التعاون مع جهود مكافحة الأمراض من خطر الإصابة أو انتشار COVID-19. \ n يمكن احتواء تفشي COVID-19 وإيقاف انتقاله ، كما كان يظهر في الصين وبعض البلدان الأخرى. لسوء الحظ ، يمكن أن تظهر حالات تفشي جديدة بسرعة. من المهم أن تكون على دراية بالموقف الذي تتواجد فيه أو تنوي الذهاب إليه. تنشر منظمة الصحة العالمية تحديثات يومية حول حالة كوفيد 19 في جميع أنحاء العالم. "

    },
    {
      "question": "من هو المعرض لخطر الإصابة",
      "answer": "بينما لا نزال نتعرف على كيفية تأثير COVID-2019 على الأشخاص ، يبدو أن كبار السن والأشخاص الذين يعانون من حالات طبية موجودة مسبقًا (مثل ارتفاع ضغط الدم أو أمراض القلب أو أمراض الرئة أو السرطان أو السكري) يصابون بأمراض خطيرة أكثر من غيرهم . "

    },
    {
      "question": "هل يجي ان ارتدي الماسك لحمايه نفسي ؟",
      "answer":  "ارتدِ قناعًا فقط إذا كنت مريضًا بأعراض COVID-19 (خاصة السعال) أو تعتني بشخص قد يكون مصابًا بـ COVID-19. لا يمكن استخدام قناع الوجه القابل للتصرف إلا مرة واحدة. إذا لم تكن مريضًا أو تعتني بشخص مريض إذن أنت تهدر قناعًا. هناك نقص في جميع أنحاء العالم في الأقنعة ، لذلك تحث منظمة الصحة العالمية الأشخاص على استخدام الأقنعة بحكمة. \ n تنصح منظمة الصحة العالمية بالاستخدام الرشيد للأقنعة الطبية لتجنب الهدر غير الضروري للموارد الثمينة وسوء استخدام الأقنعة \ n أكثر تتمثل الطرق الفعالة لحماية نفسك والآخرين من COVID-19 في تنظيف يديك بشكل متكرر وتغطية السعال بثني المرفق أو بمنديل ورقي والحفاظ على مسافة لا تقل عن متر واحد (3 أقدام) من الأشخاص الذين يسعلون أو يعطسون "

    },
    {
      "question":"هل المضادات الحيوية فعالة في منع أو علاج COVID-19؟" ,

      "answer":"لا. لا تعمل المضادات الحيوية ضد الفيروسات ، فهي تعمل فقط على الالتهابات البكتيرية. COVID-19 يسببه فيروس ، لذا لا تعمل المضادات الحيوية. لا ينبغي استخدام المضادات الحيوية كوسيلة للوقاية أو العلاج من COVID-19. فهي يجب استخدامه فقط حسب توجيهات الطبيب لعلاج عدوى بكتيرية "

    }
  ];




}