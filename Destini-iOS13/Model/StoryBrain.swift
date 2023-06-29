//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    let stories = [
                Story(
                    title: "Xe của bạn bị nổ lốp trên một con đường quanh co giữa hư không mà không có sóng điện thoại di động. Bạn quyết định đi nhờ xe. Một chiếc xe bán tải rỉ sét ầm ầm dừng lại bên cạnh bạn. Một người đàn ông đội mũ rộng vành với đôi mắt vô hồn mở cửa xe cho bạn và hỏi: 'Có cần đi nhờ không, cậu bé?'.",
                    choice1: "Tôi sẽ nhảy vào. Cảm ơn sự giúp đỡ!", choice2: "Tốt hơn nên hỏi anh ta nếu anh ta là một kẻ giết người đầu tiên.", choice1Destination: 2, choice2Destination: 1
                        ),
                Story(
                    title: "Anh ta chậm rãi gật đầu, không bối rối trước câu hỏi.",
                    choice1: "Ít nhất thì anh ấy cũng trung thực. Tôi sẽ trèo vào.", choice2: "Đợi đã, tôi biết cách thay lốp xe.", choice1Destination: 2, choice2Destination: 3
                ),
                Story(
                    title: "Khi bạn bắt đầu lái xe, người lạ bắt đầu nói về mối quan hệ của anh ta với mẹ anh ta. Anh ấy trở nên tức giận và tức giận hơn theo từng phút. Anh ta yêu cầu bạn mở hộp đựng găng tay. Bên trong, bạn tìm thấy một con dao đẫm máu, hai ngón tay bị đứt lìa và một cuộn băng cassette của Elton John. Anh ta với lấy hộp đựng găng tay.",
                    choice1: "Tôi yêu Elton John! Đưa cho anh ta cuốn băng cassette.", choice2: "Đó là anh ấy hoặc tôi! Bạn lấy con dao và đâm anh ta.", choice1Destination: 5, choice2Destination: 4
                ),
                Story(
                    title: "Cái gì? Thật ra là một cảnh sát! Bạn có biết tai nạn giao thông là nguyên nhân thứ hai gây tử vong do tai nạn cho hầu hết các nhóm tuổi trưởng thành?",
                    choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
                ),
                Story(
                    title: "Khi bạn lao qua lan can và lao về phía những tảng đá lởm chởm bên dưới, bạn ngẫm nghĩ về sự khôn ngoan đáng ngờ của việc đâm ai đó khi họ đang lái chiếc xe mà bạn đang ngồi.",
                    choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
                ),
                Story(
                    title: "Bạn gắn bó với kẻ sát nhân trong khi ngâm nga những câu thơ 'Bạn có thể cảm nhận được tình yêu đêm nay'. Anh ấy thả bạn xuống ở thị trấn tiếp theo. Trước khi bạn đi, anh ta hỏi bạn có biết chỗ nào tốt để vứt xác không. Bạn trả lời: 'Hãy thử bến tàu.'",
                    choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
                )

    ]
    mutating func nextStory(userChoice : String){
        if userChoice == stories[storyNumber].choice1{
            storyNumber = stories[storyNumber].choice1Destination
        }else{
            storyNumber = stories[storyNumber].choice2Destination
        }
        if storyNumber >= stories.count {
            storyNumber = 0
        }
    }
}
