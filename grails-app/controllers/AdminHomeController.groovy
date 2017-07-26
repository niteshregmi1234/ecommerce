

class AdminHomeController {

    def adminHome() {}

    def error() {
        render "not allowed by u"
    }

    def save() {
        def test = new Test(params)
        test.save(flush: true)
        redirect(action: "show", params: [testId:test.testId])
    }

    def show(String testId) {
        def test = Test.findByTestId(testId)
        render(view: "show", model: [test: test])
    }

    def formTest() {

    }
    def list(){
        def testList=Test.list()
        [testList:testList]
    }
    def showNow(Long id4,String id3){
        def test=Test.findByTestIdAndId(id3,id4)
        render(view: "show", model: [test: test])

    }
}