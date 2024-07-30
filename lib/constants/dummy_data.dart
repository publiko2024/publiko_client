import 'package:publiko_app/domain/model/comment.dart';
import 'package:publiko_app/domain/model/post.dart';

final List<Post> dummyPosts = [
  Post(
    id: 1,
    nickname: '송해',
    title: '송해는 뽀송뽀송해',
    content:
        '아침 햇살을 받으며 일어나는 송해의 하루는 언제나 상쾌하다. 푸른 하늘 아래 산책을 즐기고, 반짝이는 눈빛으로 사람들을 맞이하는 그의 모습은 뽀송뽀송한 기운을 가득 품고 있다. 송해는 주변의 모든 것을 긍정적으로 받아들이며, 작은 것에도 감사하는 마음을 잊지 않는다. 그의 삶은 많은 이들에게 힘과 용기를 주며, 하루를 더 밝게 만들어준다. 송해의 일상적인 순간들이 그의 긍정적인 에너지로 가득 차 있음을 느낄 수 있다.',
    createdAt: DateTime.now().subtract(Duration(days: 1)),
    viewCount: 287,
    commentCount: 3,
    comments: [
      Comment(
        id: 1,
        nickname: '햇살나리',
        content: '정말 기분이 좋아지는 글이네요! 송해님처럼 긍정적인 마인드로 하루를 보내면 좋겠어요.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 2,
        nickname: '맑은하늘',
        content: '송해님 이야기를 듣고 기분이 좋아졌어요. 감사합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 3,
        nickname: '소풍가자',
        content: '송해님처럼 긍정적으로 살아가면 하루하루가 더욱 행복할 것 같아요.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 2,
    nickname: '행복한나무',
    title: '여름철, 보장된 시원한 장소는 어디?',
    content:
        '여름철 더위를 피할 수 있는 시원한 장소를 찾고 있어요. 최근에 무더운 날씨가 계속되고 있는데, 집에서 에어컨을 틀어놓고 있어도 바깥에서의 더위는 너무 힘들어요. 여러분이 추천하는 시원한 장소가 있다면 정말 감사하겠습니다! 물가에서의 산책이나 냉방이 잘 되는 카페, 또는 휴식을 취할 수 있는 공원 같은 곳이 좋습니다. 더위를 날릴 수 있는 팁이나 장소도 함께 공유해 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 2)),
    viewCount: 200,
    commentCount: 2,
    comments: [
      Comment(
        id: 4,
        nickname: '시원한바람',
        content: '서울숲이 시원하고 좋았어요. 평일 오전에는 한적해서 더 좋더라구요.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 5,
        nickname: '해피웨이',
        content: '청량리역 근처의 커피숍은 에어컨이 강하게 나와서 시원해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 3,
    nickname: '우리는하나',
    title: '장애인 이동권에 대한 의견',
    content:
        '장애인의 이동권을 보장하기 위한 정책이나 제도에 대해 여러분의 의견을 듣고 싶습니다. 현재의 제도가 얼마나 효과적이라고 생각하시나요? 최근에 발표된 새로운 정책이 장애인들의 이동을 더 용이하게 할 것이라는 기대가 있지만, 실제로는 많은 장애인들이 여전히 이동에 어려움을 겪고 있습니다. 다양한 의견과 경험을 공유하여, 보다 나은 이동권 보장을 위한 논의를 해보았으면 좋겠습니다. 제도 개선을 위해 어떤 추가적인 조치가 필요할까요?',
    createdAt: DateTime.now().subtract(Duration(days: 3)),
    viewCount: 500,
    commentCount: 4,
    comments: [
      Comment(
        id: 6,
        nickname: '정의로운검사',
        content:
            '정말 좋은 주제의 글이에요. 현재 제도는 아직 많이 부족한 것 같아요. 접근성 개선을 위한 구체적인 정책이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 7,
        nickname: '모두의마블',
        content:
            '저도 장애인 이동권 보장을 위한 정책이 더 강화되었으면 좋겠어요. 제도 개선을 위한 구체적인 제안이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 8,
        nickname: '미레닝',
        content:
            '장애인 이동권 보장을 위한 정책이 논의되고 있다는 것만으로도 큰 진전이라고 생각해요. 앞으로도 꾸준한 관심이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 9,
        nickname: '사슴꽃망울',
        content: '이동권 관련 정책이 많이 부족하다고 느껴요. 다양한 의견을 모아서 정책 개선을 위해 노력해야 할 때입니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 4,
    nickname: '책읽는고양이',
    title: '다들 책 추천 하나씩 하고 가요!',
    content:
        '최근에 읽었던 책 중에 추천할 만한 것이 있으면 알려주세요. 읽어보고 싶어요! 특히 장애인들이 겪는 다양한 경험과 도전, 그리고 이를 극복하는 이야기가 담긴 책을 찾고 있습니다. 장애인 문학이나 장애를 주제로 한 논픽션도 좋습니다. 책에 대한 간단한 리뷰나 소개를 포함해서 공유해주시면 감사하겠습니다.',
    createdAt: DateTime.now().subtract(Duration(days: 4)),
    viewCount: 150,
    commentCount: 1,
    comments: [
      Comment(
        id: 10,
        nickname: '지식수집가',
        content: '『장애인과 함께하는 사회』라는 책이 정말 좋았어요. 장애인들의 삶을 잘 이해할 수 있었습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 5,
    nickname: '우럭메기',
    title: '주말 나들이 추천 장소',
    content:
        '주말에 나들이 가고 싶은데 좋은 장소가 있을까요? 장애인 접근성이 좋은 곳이면 더욱 좋습니다! 최근에 친구들과 주말에 어디를 갈까 고민하고 있는데, 장애인들도 편하게 접근할 수 있는 장소를 찾고 있습니다. 공원, 박물관, 혹은 특별한 체험이 가능한 곳 등 다양한 장소 추천을 부탁드립니다. 주말을 알차게 보내기 위해 여러분의 경험담을 공유해 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 5)),
    viewCount: 180,
    commentCount: 2,
    comments: [
      Comment(
        id: 11,
        nickname: '여행매니아',
        content: '서울시립미술관이 접근성이 좋고, 다양한 전시가 있어서 추천해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 12,
        nickname: '호랭이킴',
        content: '경복궁은 장애인 접근성이 좋고, 역사적인 장소라서 방문하기 좋아요.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 6,
    nickname: '호랑나비',
    title: '장애인용 앱 추천',
    content:
        '장애인을 위한 유용한 앱을 추천해 주세요. 사용해본 경험이 있으면 좋고, 어떤 기능이 좋았는지도 함께 알려주세요. 생활 편의를 위한 앱, 정보 제공 앱, 혹은 일상적인 문제 해결을 도와주는 앱 등 다양한 추천을 기다립니다. 앱의 실제 사용 경험이나 유용한 기능을 상세히 설명해 주시면 많은 도움이 될 것입니다.',
    createdAt: DateTime.now().subtract(Duration(days: 6)),
    viewCount: 220,
    commentCount: 3,
    comments: [
      Comment(
        id: 13,
        nickname: '까칠한천사',
        content: '『Smart Access』 앱이 매우 유용해요. 장애인 이동을 지원하는 다양한 기능이 있어요.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 14,
        nickname: '메로나마시썽',
        content: '『Disability Helper』 앱은 정보 제공과 상담 기능이 좋습니다. 추천해요!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
      Comment(
        id: 15,
        nickname: '도로롱쿨쿨',
        content: '『Access Guide』는 장애인들을 위한 자세한 가이드를 제공해줘서 유용합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 7,
    nickname: '웃는햇살',
    title: '최근 본 장애인 관련 영화',
    content:
        '최근에 본 장애인 관련 영화 중에서 추천할 만한 것이 있다면 소개해주세요. 감동적인 내용이나 현실적인 부분이 잘 그려진 영화가 좋습니다. 장애인들의 삶과 도전을 다룬 영화들이 많지만, 개인적으로 어떤 영화가 가장 인상 깊었는지, 어떤 부분이 특히 좋았는지를 나누고 싶습니다. 영화의 간단한 줄거리와 함께 추천해 주시면 감사하겠습니다.',
    createdAt: DateTime.now().subtract(Duration(days: 7)),
    viewCount: 300,
    commentCount: 2,
    comments: [
      Comment(
        id: 16,
        nickname: '영화광',
        content: '『The Intouchables』는 정말 감동적이었어요. 장애인과 비장애인 간의 우정이 잘 그려졌습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 17,
        nickname: '인생영화',
        content: '『A Beautiful Mind』는 정신적 도전에 대한 훌륭한 영화입니다. 강력 추천합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 8,
    nickname: '아롱사태',
    title: '장애인 체험 프로그램 후기',
    content:
        '참여한 장애인 체험 프로그램에 대한 후기를 나누고 싶습니다. 프로그램의 장점이나 개선할 점을 함께 이야기해봐요. 최근에 참가한 체험 프로그램이 매우 유익했지만, 어떤 점이 좋았고 어떤 점이 부족했는지에 대한 의견을 나누고 싶습니다. 참여한 사람들의 경험을 공유하여 앞으로의 프로그램 개선에 도움이 되었으면 좋겠습니다.',
    createdAt: DateTime.now().subtract(Duration(days: 8)),
    viewCount: 170,
    commentCount: 1,
    comments: [
      Comment(
        id: 18,
        nickname: '족구왕',
        content: '저는 최근에 참여한 체험 프로그램이 정말 좋았어요. 다양한 경험을 통해 많은 것을 배울 수 있었습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 9,
    nickname: '친구구함',
    title: '장애인 직업훈련 정보',
    content:
        '장애인을 위한 직업훈련 프로그램이나 취업 지원 정보가 필요합니다. 아는 정보가 있다면 공유해 주세요. 특히 직업훈련과 관련된 프로그램, 취업 지원 서비스, 또는 성공적인 사례를 소개해 주시면 많은 도움이 될 것입니다. 장애인들이 직업을 얻기 위한 다양한 기회와 자원을 찾는 데 있어 유용한 정보를 나누어 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 9)),
    viewCount: 250,
    commentCount: 3,
    comments: [
      Comment(
        id: 19,
        nickname: '알바트로스',
        content: '『AbleWorks』라는 프로그램이 좋습니다. 장애인 직업훈련과 취업 지원을 잘 해줘요.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 20,
        nickname: '뱁새',
        content: '『JobPath』는 취업 지원 서비스가 좋습니다. 다양한 직업 훈련 프로그램을 제공해요.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 21,
        nickname: '시라소니',
        content: '『Career Plus』는 장애인들이 성공적인 취업을 위해 많은 도움을 줍니다. 추천합니다!',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 10,
    nickname: '동갈방어',
    title: '장애인 권리 관련 뉴스',
    content:
        '최근 장애인 권리에 관한 뉴스나 이슈가 있으면 알려주세요. 특히 정책 변화나 사회적 논의가 있으면 좋습니다. 장애인 권리와 관련된 최근 뉴스나 논의 중에서 중요한 사항을 공유해 주시면, 많은 사람들이 최신 정보를 알 수 있을 것입니다. 정책 변경이나 사회적 이슈에 대한 자세한 내용을 함께 나누어 주세요.',
    createdAt: DateTime.now().subtract(Duration(days: 10)),
    viewCount: 400,
    commentCount: 5,
    comments: [
      Comment(
        id: 22,
        nickname: '눈콩',
        content: '최근에 새로운 장애인 권리 법안이 통과되었어요. 자세한 내용을 알고 싶다면 뉴스를 체크해보세요.',
        createdAt: DateTime.now().subtract(Duration(hours: 8)),
      ),
      Comment(
        id: 23,
        nickname: '밤린',
        content: '이번 정책 변화가 실제로 장애인들에게 어떤 영향을 미칠지 궁금하네요. 계속 지켜봐야 할 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 6)),
      ),
      Comment(
        id: 24,
        nickname: '시라소니',
        content: '장애인 권리와 관련된 새로운 논의가 계속되고 있어서 좋습니다. 앞으로도 많은 논의가 필요할 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
      ),
      Comment(
        id: 25,
        nickname: '코지뮤직',
        content: '정확한 정보와 업데이트를 받기 위해 관련 뉴스를 자주 확인하는 것이 중요하네요.',
        createdAt: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Comment(
        id: 26,
        nickname: '멜랑말랑',
        content: '장애인 권리에 대한 논의는 계속되어야 합니다. 많은 사람들이 관심을 가지는 것이 필요합니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 1)),
      ),
    ],
    imageUrls: [],
  ),
  Post(
    id: 11,
    nickname: '다노박',
    title: '장애인 문화행사 정보',
    content:
        '장애인을 위한 문화행사나 공연 정보가 있으면 알려주세요. 참여할 수 있는 기회가 많아지면 좋겠습니다. 장애인을 대상으로 한 문화행사나 공연이 있다면, 그 정보와 함께 어떻게 참여할 수 있는지에 대한 세부 사항을 공유해 주세요. 지역별 행사 정보나 행사 참가 후기에 대한 내용도 함께 나누어 주시면 좋겠습니다.',
    createdAt: DateTime.now().subtract(Duration(days: 11)),
    viewCount: 280,
    commentCount: 2,
    comments: [
      Comment(
        id: 27,
        nickname: '만찬가',
        content: '서울에서 진행하는 장애인 문화행사들이 많이 늘어나고 있어요. 참여해보시면 좋을 것 같습니다.',
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
      ),
      Comment(
        id: 28,
        nickname: '호로요이',
        content: '장애인을 위한 다양한 문화행사들이 많으니, 웹사이트나 커뮤니티에서 정보 확인해보세요!',
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
      ),
    ],
    imageUrls: [],
  ),
];
