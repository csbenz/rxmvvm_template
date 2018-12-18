package ${escapeKotlinIdentifiers(packageName)}

import com.swissborg.android.BaseViewModel
import com.swissborg.android.ui.markets.MarketsTransformers
import io.reactivex.Observable
import io.reactivex.ObservableTransformer
import javax.inject.Inject

class ${prefix}ViewModel @Inject constructor(private val transformers: MarketsTransformers) :
        BaseViewModel<${prefix}ViewModel.UiModel, ${prefix}ViewModel.UiEvent>() {

    companion object {
        fun reduce(previousState: UiModel, newData: Any): UiModel {
            return when (newData) {
                else -> previousState
            }
        }
    }

    lateinit var uiModelObservables: UiModelObservable

    init {
        bindUiModelObservables()
    }

    override fun tag(): String {
        return this::class.java.simpleName
    }

    override fun eventsToUiModelsTransformer(): ObservableTransformer<UiEvent, UiModel> {
        return ObservableTransformer { upstream ->
            upstream.publish { shared ->
                Observable.merge(Observable.empty(),
                                Observable.empty())
            }.scan(UiModel()) { newModel, resultOrEvent ->
                reduce(newModel, resultOrEvent)
            }
        }
    }

    private fun bindUiModelObservables() {
        val sharedUiModel = uiModelObservable().share()

        uiModelObservables = UiModelObservable()
        )
    }

    data class UiModel() : BaseViewModel.UiModelRepr()

    data class UiModelObservable()

    sealed class UiEvent : BaseViewModel.UiEventRepr() {
        // TODO
    }
}