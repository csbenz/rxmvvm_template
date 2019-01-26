package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import com.swissborg.android.di.Injectable
import com.swissborg.android.ui.base.BaseFragment
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${prefix}Fragment : BaseFragment(), Injectable {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory

    private lateinit var viewModel: ${prefix}ViewModel

    private val disposables = CompositeDisposable()

    companion object {

        fun newInstance(): ${prefix}Fragment = ${prefix}Fragment()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {

        return inflater.inflate(R.layout.${fragment_layout}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        viewModel = ViewModelProviders.of(this, viewModelFactory).get(${prefix}ViewModel::class.java)
        setupUI()

    }

    override fun onStart() {
        super.onStart()
        bind()
        bindModel()
    }

    override fun onStop() {
        super.onStop()

        disposables.clear()
    }

    private fun setupUI() {
        // TODO
    }

    override fun screenName(): String? {
        return "" // TODO
    }

    private fun bind() {
        // TODO
    }

    private fun bindModel() {
         // TODO
    }
}