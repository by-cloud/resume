module Resume (resume) where

import Data.List
import TeX

basicInfo :: Resume
basicInfo = paragraph
  [ pure "\\basicInfo{"
  , pure $ "\\email{claude.by.cloud@gmail.com}" ++ period
  , pure $ "\\github[by-cloud]{https://github.com/by-cloud}" ++ period
  , pure $ "\\homepage[by-cloud.top]{https://by-cloud.top}" ++ period
  , pure "\\linkedin[claude]{https://www.linkedin.com/in/by-cloud/}"
  , pure "}"
  ] where period = "\\textperiodcentered\\"

scut :: Resume
scut = paragraph
  [ datedSection (date "2017" "09" ~~ date "2022" "03") $ paragraph
    [ en "\\textbf{South China University of Technology}, GuangZhou, China"
    , cn "\\textbf{华南理工大学}, 广州, 中国"
    ]
  , en $ "Major: Computer Science (Undergraduate),\\newline " ++ gpa
  , cn $ "专业: 计算机科学与技术(全英联合班) (本科),\\newline " ++ gpa
  ] where gpa = "GPA: 3.86/4.00(2017), 3.78/4.00(2018), 3.72/4.00(2019), 3.48/4.00(2020)"
      

berkeley :: Resume
berkeley = paragraph
  [ datedSection (date "2019" "01" ~~ date "2019" "06") $ paragraph
    [ en "\\textbf{University of California, Berkeley}, California, United States"
    , cn "\\textbf{加利福尼亚大学伯克利}, 美国"
    ]
  , en $ "Major: Mathematics and Computer Science (Visiting Student),\\newline courses: " ++ courses
  , cn $ "专业: 计算机科学, 数学 (交换项目),\\newline 选课: " ++ courses
  ] where courses = "CS61B(Data Structures), CS170(Eﬀicient Algorithms and Intractable Problems)"

dqn :: Resume
dqn = paragraph
  [ datedSection (date "2018" "10" ~~ date "2019" "01") $ paragraph
    [ en "\\textbf{South China University of Technology}, Research Assistant"
    , cn "\\textbf{华南理工大学}, 研究助理"
    ]
  , paragraph
    [ en "\\textbf{Development of the Bus Scheduling System with Deep Reinforcement Learning Method}\\newline{This project aimed synthetically to design a system to solve the bus scheduling problem. We mainly used the Deep Q Network(DQN) to build the machine learning model.}"
    , cn "\\textbf{公共交通调度系统}{ 深度强化学习, 工程应用项目开发, 调度问题研究}"
    ]
  , itemize
    [ en "\\item Used Deep Neural Network to improve the learning model."
    , cn "\\item 使用深度神经网络建立了学习模型。"

    , en "\\item Implemented the Q-learning algorithm with pytorch."
    , cn "\\item 使用Pytorch实现简单Q-learning算法。"

    , en "\\item Wrote the working process and reported weekly."
    , cn "\\item 学会了怎么撰写研究日志并报告研究成果。"
    ]
  ]

computervision :: Resume
computervision = paragraph
  [ datedSection (date "2019" "09" ~~ date "2020" "02") $ paragraph
    [ cn "\\textbf{华南理工大学}, 研究助理"
    , en "\\textbf{South China University of Technology}, Research Assistant"
    ]
  , paragraph
    [ cn "\\textbf{餐品类型识别}{ 计算机视觉, 工程应用项目开发}"
    , en "\\textbf{Development of the Meal Product Identification Technology that Used in the Cafeteria's Self-service Payment System}\\newline{According to pictures and data provided by the Cafeteria, we developed the identification technology to recognize the meals’ categories when they were captured by cameras.}"
    ]
  , itemize
    [ cn $ "\\item 重构了项目中的模型训练部分的代码。"
    , en $ "\\item Reconstructed the code of training function of the proejct."

    , cn $ "\\item 为了单元测试写了一些简单的神经网络以及生成了一些简单的图片。"
    , en $ "\\item Made some 4x4 images whose pixel values were all 127 and a two-layer neural network for unit test."

    , cn $ "\\item 实现了两个算法来对之前初步清洗过的数据进行初步的聚类，并利用预训练的模型检测聚类的效果。"
    , en $ "\\item Implemented 2 algorithms to cluster, label and evaluate newly labeled pictures with pretrained model."

    , cn $ "\\item 使用我们自己的数据集训练模型，并且逐步地提高它在测试集上的准确率。"
    , en $ "\\item Trained the model with our own dataset, and kept debugging the model to make the prediction synthetically."
    ]
  ]

plct :: Resume
plct = datedSection (date "2021" "10" ~~ date "2021" "11") $ paragraph
  [ bold "PLCT Lab - Aya Interactive Theorem Prover"
  --, cn "Aya编程语言"
  --, en "Aya Interactive Theorem Prover"
  --, itemize
  --  [ cn "\\item Aya编程语言"
  --  , en "\\item Aya"
  --  ]
  ]

sfu :: Resume
sfu = paragraph
  [ datedSection (date "2022" "11" ~~ date "2024" "03") $ paragraph
    [ en "\\textbf{Saint Francis University}, Research Assistant"
    , cn "\\textbf{圣方济各大学}, 研究助理"
    ]
  , paragraph
    [ en "\\textbf{Transformation of sementic information of fonts}"
    , cn "\\textbf{字体生成}{字体图像语义信息的迁移}"
    ]
  , itemize
    [ 
      en $ "\\item Get contour points of any character of any font with OpenCV."
    , cn $ "\\item 使用OpenCV获取字体的任意字符的轮廓点。"

    , en $ "\\item Do the registration to get a 1-to-1 correspondence between those contour points."
    , cn $ "\\item 做Registration得到轮廓点之间的一一映射。"

    , en $ "\\item Do interpolation to transfer the stroke infomation from base font to object font."
    , cn $ "\\item 做Interpolation将基础字体的笔画信息迁移到目标字体。"
    ]
  ]

devTools :: Resume
devTools = paragraph
  [ itemTeX "开发工具" "Development Tool"
  , cn "能适应任何编辑器/操作系统，平常在 Ubuntu/macOS 下使用 JetBrains IDE、VSCode，"
  , cn $ "有使用 " ++ intercalate "、" tools ++ " 等团队协作工具的经验。"
  , en "can adapt to any editors/operating systems, usually use JetBrains IDEs and VSCode under"
  , simple "Ubuntu/macOS."
  , elab "Ubuntu/macOS, have experience with team collaboration tools like "
  , elab $ intercalate ", " tools ++ "."
  ] where
     tools = ["GitHub", "GitLab", "Tower"]

machinelearning :: Resume
machinelearning = paragraph
  [ itemTeX "机器学习" "Machine Learning"
  , cn "从课程与项目中学到了机器学习的基础知识，了解 pytorch 和 tensorflow 的使用。"
  , en "Learned general knowledge of machine learning from lab and course, know pytorch and tensorflow."
  ]

programmingLanguages :: Resume
programmingLanguages = paragraph
  [ itemTeX "编程语言" "Program Language"
  , cn "编程不受特定语言限制，"
  , cn $ "了解 " ++ very ++ "，"
  , cn $ "较为了解 " ++ somehow ++ " (排名均不分先后)。"
  , en "not limited to any specific language,"
  , en $ "known " ++ very ++ ","
  , en $ "comfortable with " ++ somehow ++ " (in random order)."
  ] where
      somehow = "Haskell Agda Lean"
      very    = "Java Python C/C++"

skills :: Resume
skills = section "技能" "Skills" . pure $ itemize
  [ programmingLanguages
  , machinelearning
  , devTools
  ]

awards :: Resume
awards = paragraph
  [ itemize
    [ en "\\item First Prize in the 2018 National Collegiate Mathematics Competition"
    , cn "\\item 第十届全国大学生数学竞赛（非数学类）一等奖"

    , en "\\item Honorable Mention in the 2019 MCM/ICM"
    , cn "\\item 2019年美国大学生数学竞赛二等奖"

    , en "\\item Academic Merit Scholarships in the South China University of Technology, 2017-2018"
    , cn "\\item 华南理工大学2017-2018学年三等奖学金"

    , en "\\item National Endeavor Scholarship, 2019-2020"
    , cn "\\item 2019-2020学年国家励志奖学金"
    ]
  ]

resume :: Resume
resume = paragraph
  [ pure "% !TEX program = xelatex"
  , pure "% This file is generated, don't manually edit!"

  -- head
  , paragraph
    [ pure "\\documentclass{resume}"
    , cn   "\\usepackage{lastpage}"
    , cn   "\\usepackage{fancyhdr}"
    -- disable extra space before next section
    , pure "\\usepackage{linespacing_fix}"
    , cn   "\\usepackage[fallback]{xeCJK}"
    ]

  --  \setmainfont[]{SimSun}
  --  \setCJKfallbackfamilyfont{rm}{HAN NOM B}
  --  \setCJKmainfont{Source Han Serif SC Regular}
  --  \renewcommand{\thepage}{\Chinese{page}}

  -- begin document
  , pure "\\begin{document}"
  , cn "\\renewcommand\\headrulewidth{0pt}"

  -- name
  , tex "name" "Qixuan Wang" "Qixuan Wang"

  , basicInfo
  , section "教育经历" "Education"
    [ scut
    , berkeley
    ]

  , section "研究经历" "Research Experience"
    [ computervision
    , dqn
    ]

  , section "工作经历" "Working Experience"
    [ plct
    , sfu
    ]

  , skills
  
  ,section "荣誉" "Awards"
    [ awards
    ] 

  , section "其他" "Miscellaneous"
    [ itemize
      [-- en "\\item StackOverflow Developer Story: https://stackoverflow.com/story/by-cloud, CV: https://stackoverflow.com/cv/by-cloud"
      --, cn "\\item StackOverflow开发者历程: https://stackoverflow.com/story/by-cloud, 简历: https://stackoverflow.com/cv/by-cloud"

       en "\\item Languages: English - fluent (CET4: 605/710, CET6: 547/710), Chinese - native speaker, Japanese - beginner"
      , cn "\\item 语言: 英语 - 熟练 (四级: 605/710, 六级: 547/710)，汉语 - 母语水平，日语 - 初学者"

      , en "\\item Final Design: reproduce https://github.com/cindydeng1991/TPAMI-CU-Net"
      , cn "\\item 毕业设计: 复现 https://github.com/cindydeng1991/TPAMI-CU-Net"
      ]
    ]

  -- end document
  , pure "\\end{document}"
  ]
